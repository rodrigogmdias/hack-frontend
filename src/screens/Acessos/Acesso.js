import React, { Component } from "react";
import { View, StyleSheet, Dimensions, Text} from "react-native";

export default class AcessarScreen extends Component {
static navigationOptions = {
    title : "Informativo",
    headerStyle: {
        backgroundColor: "#cecece"
    },
    headerTintColor: "#000",
    headerTitleStyle: {
        fontWeight: "bold"
    }
}
    render() {
        return (   
          <View style={{flex:1}}>
        
            {this.props.children}

          </View>
        );
    }
}

const { height } = Dimensions.get("window");

const styles = StyleSheet.create({
    backgroundVideo: { 
        height: height,
        position: "absolute", 
        top: 0, 
        left: 0, 
        alignItems: "stretch", 
        bottom: 0, 
        right: 0
    }
});