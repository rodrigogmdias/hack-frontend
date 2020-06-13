import React, { Component } from "react";
import {View, TouchableOpacity, Image} from "react-native";
import {HomeScreen, CadastroScreen, Familia, Mapa, Mulher, Saude} from "./src/screens";
import {createAppContainer, createDrawerNavigator, createSwitchNavigator, createStackNavigator} from "react-navigation";

class NavigationDrawerStructure extends Component {
  toggleDrawer = () => {
    this.props.navigationProps.toggleDrawer();
  };
  render() {
    return (
      <View style={{flexDirection: "row"}}>
        <TouchableOpacity onPress={this.toggleDrawer.bind(this)}>
          
        </TouchableOpacity>
      </View>
    )
  }
}

const HomeStackNavigator = createStackNavigator({
  Home: {
    screen: HomeScreen,
    navigationOptions: ({navigation}) => ({
      headerLeft: <NavigationDrawerStructure navigationProps={navigation}/>,
      headerStyle: {
        backgroundColor: "#da552f",
        fontWeight: "bold",
      },
      headerTintColor: "#fff",
    })
  }
})

const FamiliaStackNavigator = createStackNavigator({
  Home: {
    screen: Familia,
    navigationOptions: ({navigation}) => ({
      headerLeft: <NavigationDrawerStructure navigationProps={navigation}/>,
      headerStyle: {
        backgroundColor: "#9d0000",
        fontWeight: "bold"
      },
      headerTintColor: "#fff",
    })
  }
})

const SaudeStackNavigator = createStackNavigator({
  Home: {
    screen: Saude,
    navigationOptions: ({navigation}) => ({
      headerLeft: <NavigationDrawerStructure navigationProps={navigation}/>,
      headerStyle: {
        backgroundColor: "#0001a4",
        fontWeight: "bold"
      },
      headerTintColor: "#fff",
    })
  }
})

const MulherStackNavigator = createStackNavigator({
  Home: {
    screen: Mulher,
    navigationOptions: ({navigation}) => ({
      headerLeft: <NavigationDrawerStructure navigationProps={navigation}/>,
      headerStyle: {
        backgroundColor: "#f6ff00",
        fontWeight: "bold"
      }
    })
  }
})

const MapaStackNavigator = createStackNavigator({
  Home: {
    screen: Mapa,
    navigationOptions: ({navigation}) => ({
      headerLeft: <NavigationDrawerStructure navigationProps={navigation}/>,
      headerStyle: {
        backgroundColor: "#9702e4",
        fontWeight: "bold"
      },
      headerTintColor: "#fff",
    })
  }
})


const MyDrawerNavigator = createDrawerNavigator(
  {
    Home: {
      screen: HomeStackNavigator
    },   
    Familia:{
      screen: FamiliaStackNavigator
    },
    Saude: {
      screen: SaudeStackNavigator
    },
    Mapa: {
      screen: MapaStackNavigator
    },
    Mulher: {
      screen: MulherStackNavigator
    }
  },
  {
    contentOptions: {
      activeTintColor: "#da552f",
      labelStyle: {
        fontSize: 20
      }
    }
  }
);

export default class App extends Component {
  render() {
    return <AppContainer/>;
  }
}

const AppSwitchNavigator = createSwitchNavigator({
  Welcome: { screen: CadastroScreen },
  Dashboard: { screen: MyDrawerNavigator }
});

const AppContainer = createAppContainer(AppSwitchNavigator);




