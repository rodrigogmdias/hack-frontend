import React, { Component } from "react";
import { View, Text, ImageBackground, StyleSheet, ScrollView } from "react-native";

export default class Familia extends Component {
static navigationOptions = {
    title : "Familia"
}
render() {
  return ( 
    <View style={styles.background}>
      <View style={styles.backgroundFundo} />

        <View style={{alignItems: "center", marginTop: 30, margin: 10}}> 
          <Text style={{fontSize: 20, fontWeight: "bold"}}>Informações Principais</Text> 
        </View>

        <View style={{marginLeft: 30, marginRight: 30, alignSelf: "stretch", borderTopWidth: 1,borderTopColor: "#fff", opacity: 0.8}}>
              <Text style={styles.Item}>Escreva Aqui</Text>
              <Text style={styles.Item}>Escreva Aqui</Text>
              <Text style={styles.Item}>Escreva Aqui</Text>
              <Text style={styles.Item}>Escreva Aqui</Text>
            </View>
      
            <View style={styles.card}></View>
      
        <View style={{height: 130, marginTop: 20}}>
          <ScrollView scrollEventThrottle={16} horizontal={true} showsHorizontalScrollIndicator={false} >
          
          <View style={styles.scroll}>
              <Text style={{fontSize: 15, fontWeight: "bold"}}>Item</Text>
            </View>

            <View style={styles.scroll}>
              <Text style={{fontSize: 15, fontWeight: "bold"}}>Item</Text>
            </View>

            <View style={styles.scroll}>
              <Text style={{fontSize: 15, fontWeight: "bold"}}>Item</Text>
            </View>

            <View style={styles.scroll}>
              <Text style={{fontSize: 15, fontWeight: "bold"}}>Item</Text>
            </View>

            <View style={styles.scroll}>
              <Text style={{fontSize: 15, fontWeight: "bold"}}>Item</Text>
            </View>

          </ScrollView>
        </View>

    </View>
  );
}
}

const styles = StyleSheet.create({
background: {
  flex: 1
},
backgroundFundo: {
  resizeMode: "cover",
  position: "absolute",
  width: "100%",
  height: "100%",
  backgroundColor: "#9d0000",
  opacity: 0.5
},
scroll: {
  flex: 1,
  width: 100,
  height: 100,
  marginLeft: 10,
  backgroundColor: "#fff",
  paddingHorizontal: 10,
  marginRight: 5,
  borderRadius: 3,
  justifyContent: "center"
},
card: {
  flex: 1,
  maxHeight: 200,
  backgroundColor: "#fff",
  zIndex: 5,
  borderRadius: 4,
  marginTop: 50,
  height: "100%",
  margin: 20,
  top: 0
},
Item: {
  flexDirection: "row",
  padding: 12,
  borderBottomWidth: 1,
  borderBottomColor: "#fff",
  fontSize: 15
}
});