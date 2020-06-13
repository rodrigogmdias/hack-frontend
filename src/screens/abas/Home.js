import React, { Component } from "react";
import { View, Text, StyleSheet, TouchableOpacity, ScrollView } from "react-native";

export default class HomeScreen extends Component {
    constructor(props) {
      super(props);
    }
static navigationOptions = {
    title : "Radical Vila",
    headerStyle: {
        backgroundColor: "#cecece"
    },
    headerTintColor: "#000",
    headerTitleStyle: {
        fontWeight: "bold"
    }
};
    render() {
        return ( 
            <View style={{flex:1}}>
        
            <View style={{resizeMode: "cover",position: "absolute",width: "100%",height: "100%",backgroundColor: "#da552f",opacity: 0.5}} />
        
            <ScrollView>
                <View style={styles.container}>
                    <Text style={styles.title}>Postar Alguma coisa</Text>
                    <Text style={styles.TextContainer}>Alguma Informação importante</Text>
                    <TouchableOpacity style={styles.Button} onPress={() => this.props.navigation.navigate("Acesso")}>
                        <Text style={styles.ButtonText}>Acessar</Text>
                    </TouchableOpacity>
                </View>

                <View style={styles.container}>
                    <Text style={styles.title}>Postar Alguma coisa</Text>
                    <Text style={styles.TextContainer}>Alguma Informação importante</Text>
                    <TouchableOpacity style={styles.Button} onPress={() => this.props.navigation.navigate("Acesso")}>
                        <Text style={styles.ButtonText}>Acessar</Text>
                    </TouchableOpacity>
                </View>

                <View style={styles.container}>
                    <Text style={styles.title}>Postar Alguma coisa</Text>
                    <Text style={styles.TextContainer}>Alguma Informação importante</Text>
                    <TouchableOpacity style={styles.Button} onPress={() => this.props.navigation.navigate("Acesso")}>
                        <Text style={styles.ButtonText}>Acessar</Text>
                    </TouchableOpacity>
                </View>

                <View style={styles.container}>
                    <Text style={styles.title}>Postar Alguma coisa</Text>
                    <Text style={styles.TextContainer}>Alguma Informação importante</Text>
                    <TouchableOpacity style={styles.Button} onPress={() => this.props.navigation.navigate("Acesso")}>
                        <Text style={styles.ButtonText}>Acessar</Text>
                    </TouchableOpacity>
                </View>

                <View style={styles.container}>
                    <Text style={styles.title}>Postar Alguma coisa</Text>
                    <Text style={styles.TextContainer}>Alguma Informação importante</Text>
                    <TouchableOpacity style={styles.Button} onPress={() => this.props.navigation.navigate("Acesso")}>
                        <Text style={styles.ButtonText}>Acessar</Text>
                    </TouchableOpacity>
                </View>
                </ScrollView>
        
            </View>
        );
    }
}
 
const styles = StyleSheet.create({ 
    container: {
        backgroundColor: "#fff",
        borderWidth: 1,
        borderColor: "#606060",
        borderRadius: 5,
        padding: 15,
        marginLeft: 20, 
        marginRight: 20, 
        marginTop: 10
    },
    title: {
        fontSize: 18,
        fontWeight: "bold",
        color: "#333"
    },
    TextContainer: {
        fontSize: 16,
        color: "#999",
        marginTop: 3,
        lineHeight: 24,
    },
    Button: {
        height: 42,
        borderRadius: 5,
        borderWidth: 2,
        borderColor: "#cecece",
        backgroundColor: "transparent",
        justifyContent: "center",
        alignItems: "center",
        marginTop: 10,
        backgroundColor: "#da552f"
    },
    ButtonText: {
        fontSize: 16,
        color: "#000",
        fontWeight: "bold"
    }
});