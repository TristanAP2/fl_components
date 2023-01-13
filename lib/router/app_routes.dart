//archivo para las rutas
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';


class AppRoutes{
  static const intialRoute = 'home';

  static final MenuOptions = <MenuOption> [
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list, name: 'List View Tipo 1', screen: const ListView2Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt, name: 'List View Tipo 2', screen: const ListView2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_rounded, name: 'Alert', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Card', screen: const CardScreen()),
    MenuOption(route: 'alertmessage', icon: Icons.warning_amber_rounded, name: 'Alert Message', screen: const AlertMessageScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle, name: 'Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_fill, name: 'Animated Container', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'Forms: Input', screen: const InputsScreen()),
    MenuOption(route: 'slider', icon: Icons.slow_motion_video, name: 'Slider & Checks', screen: const SliderScreen()),
    MenuOption(route: 'slider2', icon: Icons.slow_motion_video, name: 'Slider & Checks 2 ', screen: const Slider2Screen()),
    MenuOption(route: 'listviewbuilder', icon: Icons.build_circle_outlined, name: 'InfiniteScroll - Pull to refresh', screen: const ListViewBuilderScreen()),
 
  ];

  static final MenuOptionsHouses = <MenuOption> [
    MenuOption(route: 'targaryen', icon: Icons.abc, name: 'Targaryen', screen: const targaryenScreen()),
    MenuOption(route: 'stark', icon: Icons.access_alarm_sharp, name: 'Stark', screen: const StarkScreen()),
    MenuOption(route: 'lannister', icon: Icons.account_balance_wallet, name: 'Lannister', screen: const LannisterScreen()),
    MenuOption(route: 'baratheon', icon: Icons.youtube_searched_for_sharp, name: 'Baratheon', screen: const BaratheonScreen()),
    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

      for (final option in MenuOptions){

        appRoutes.addAll( {option.route : (BuildContext context) => option.screen});

      }
      for (final option in MenuOptionsHouses){

        appRoutes.addAll( {option.route : (BuildContext context) => option.screen});

      }

      return appRoutes;
    }

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
      return MaterialPageRoute(builder: (context) => const AlertScreen());
    }
}