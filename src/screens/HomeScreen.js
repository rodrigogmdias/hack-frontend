import {createAppContainer, createBottomTabNavigator} from "react-navigation";
import AbasHome from "./abas/AbasHome";
import AbasFotos from"./abas/AbasFotos";


const TabNavigator = createBottomTabNavigator (
  {
    RV: AbasHome,
    fotos: AbasFotos,
  },
  {
    tabBarOptions: {
      labelStyle: {
        fontSize: 30,
        fontWeight: "bold",
      },
      activeTintColor: "#da552f",
      inactiveTintColor: "#606060",
      style: {
        backgroundColor: "#cecece",
        borderWidth: 2,
        borderColor: "#606060",
      }
    }
  }
);

export default createAppContainer(TabNavigator);

