import React, { Component } from "react";
import {View,StyleSheet, Text, TouchableOpacity, TextInput, Image} from "react-native";

export default class CadastroScreen extends Component {
  state = {
    login: "",
    password: ""
  };

  render() {
    return(
      <View style={styles.container}>

        <Image style={{margin: 20, width: 200, height: 200, borderRadius: 60}} source={require("../assets/Radical_vila.jpg")}/>

        <TextInput style={styles.input}
          placeholder="Digite seu Login"
          value={this.state.login}
          onChangeText={login => this.setState({ login })}
        />

        <TextInput style={styles.input}
          placeholder="Digite sua senha"
          value={this.state.password}
          onChangeText={password => this.setState({ password })}
        />

        <TouchableOpacity style={styles.button} 
          onPress={() => this.props.navigation.navigate("Home")}>
          <Text style={styles.buttonText}>Entrar</Text>
        </TouchableOpacity>

        <Text style={{color: "#fff"}}>Em Desenvolvimento @catarinogabrielle</Text>
      </View> 
    );
  }
}

const styles = StyleSheet.create({ 
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    padding: 20,
    backgroundColor: "#da552f"
  },
  input: {
    height: 45,
    backgroundColor: "#FFF",
    alignSelf: "stretch",
    borderColor: "#EEE",
    borderWidth: 1,
    paddingHorizontal: 20,
    marginBottom: 10,
    borderRadius: 10
  },
  button: {
    height: 45,
    backgroundColor: "#3a3a3a",
    alignSelf: "stretch",
    paddingHorizontal: 20,
    justifyContent: "center",
    alignItems: "center",
    borderRadius: 10
  },
  buttonText: {
    color: "#FFF",
    fontWeight: "bold",
    fontSize: 20
  }
}); 