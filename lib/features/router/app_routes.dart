import 'package:flutter/material.dart';
import 'package:tudoctor_app/features/views/doctor_view.dart';
import 'package:tudoctor_app/features/views/exams_view.dart';
import 'package:tudoctor_app/features/views/historial_view.dart';
import 'package:tudoctor_app/features/views/home_view.dart';
import 'package:tudoctor_app/features/views/login_view.dart';
import 'package:tudoctor_app/features/views/services_view.dart';
import 'package:tudoctor_app/features/views/triaje_view.dart';

import '../../models/menu_option.dart';


class AppRoutes {

  static const initialRoute = 'login';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'login', icon: Icons.people, name: 'login', screen: LoginView()),
    MenuOption(route: 'triaje', icon: Icons.trending_down_sharp, name: 'Triaje', screen:TriajeView() ),
    MenuOption(route: 'exams', icon: Icons.text_increase_sharp , name: 'Examenes', screen: ExamanView()),
    MenuOption(route: 'history', icon: Icons.history_edu_sharp, name: 'Historial', screen: HistoryView()),
    MenuOption(route: 'doctor', icon: Icons.medical_services, name: 'Doctor', screen: DoctorView()),
    MenuOption(route: 'servicios', icon: Icons.add_home_work_sharp, name: 'Servicios', screen: ServicesView())

  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeView() });

    for (final option in menuOptions ) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'     : ( BuildContext context ) => const HomeScreen(),
  //   'listview1': ( BuildContext context ) => const Listview1Screen(),
  //   'listview2': ( BuildContext context ) => const Listview2Screen(),
  //   'alert'    : ( BuildContext context ) => const AlertScreen(),
  //   'card'     : ( BuildContext context ) => const CardScreen(),
  // };

  // static Route<dynamic> onGenerateRoute( RouteSettings settings) {        
  //     return MaterialPageRoute(
  //         builder: (context) => const AlertScreen(),
  //     );
  // }

}