//
//  LoginViewController.swift
//  CaminheiroFacil
//
//  Created by Rodrigo Gomes Dias on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
import FBSDKLoginKit

class LoginViewController: UIViewController {
    
    var handle: AuthStateDidChangeListenerHandle!
    @IBOutlet weak var facebookButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            if let _ = user {
                self.performSegue(withIdentifier: "goToHome", sender: nil)
            }
        }
        
        if let token = AccessToken.current, !token.isExpired {
            let credential = FacebookAuthProvider.credential(withAccessToken: token.tokenString)
            
            Auth.auth().signIn(with: credential) { (authResult, error) in
              if let error = error {
                print(error.localizedDescription)
                return
              }
            }
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        Auth.auth().removeStateDidChangeListener(handle)
    }
    
    @IBAction func googleLogin(_ sender: Any) {
        GIDSignIn.sharedInstance()?.signIn()
    }
    
    @IBAction func facebookLogin(_ sender: Any) {
        let fb = LoginManager()
        
        fb.logIn(permissions: [.email], viewController: self) { (result) in
            if let token = AccessToken.current {
                let credential = FacebookAuthProvider.credential(withAccessToken: token.tokenString)
            
                Auth.auth().signIn(with: credential) { (authResult, error) in
                    if let error = error {
                        print(error.localizedDescription)
                        return
                    }
                }
            }
        }
    }
}

extension LoginViewController: LoginButtonDelegate {
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        if let error = error {
          print(error.localizedDescription)
          return
        }
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        
    }
}
