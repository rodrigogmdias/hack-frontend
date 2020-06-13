import React, { Component } from "react";
import { View, StyleSheet, Dimensions, Text, Image, ScrollView} from "react-native";

const width = Dimensions.get("screen").width;

export default class FotosScreen extends Component {
static navigationOptions = {
    title : "Midias"
}
    render() {
        return (   
          <View style={{flex:1}}>
              <View style={{resizeMode: "cover",position: "absolute",width: "100%",height: "100%",backgroundColor: "#eee"}} />
              <ScrollView>
   
              </ScrollView>
          </View>
        );
    }
}

const styles = StyleSheet.create({
    container: {
        height:260, 
        width:width, 
        marginTop: 30,
        borderWidth: 1,
        borderColor: "#606060",
        borderRadius: 5,
    },
    backgroundVideo: { 
        height:300, 
        width:width, 
        marginTop:20
    }
});

