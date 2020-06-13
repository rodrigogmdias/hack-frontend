import React, { Component } from "react";
import { createStackNavigator, createAppContainer} from "react-navigation";
import AcessarScreen from "../Acessos/Acesso";
import HomeScreen from "../abas/Home";

export default class App extends Component{
    render(){
        return <AppContainer/>;
    }
}

const AppNavigator = createStackNavigator (
    {
        Home: HomeScreen,
        Acesso: AcessarScreen, 
    }
);

const AppContainer = createAppContainer (AppNavigator)
 
