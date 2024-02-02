// ignore_for_file: prefer_const_constructors

import 'package:final_projesi/screens/categories/blackHole/blackholeScreen.dart';
import 'package:final_projesi/screens/categories/blackHole/cygnusx-1Screen.dart';
import 'package:final_projesi/screens/categories/blackHole/sagittariusaScreen.dart';
import 'package:final_projesi/screens/categories/blackHole/ton618Screen.dart';
import 'package:final_projesi/screens/categories/galaxy/andromedaScreen.dart';
import 'package:final_projesi/screens/categories/galaxy/blackEyeScreen.dart';
import 'package:final_projesi/screens/categories/galaxy/carthwheelScreen.dart';
import 'package:final_projesi/screens/categories/galaxy/galaxyScreen.dart';
import 'package:final_projesi/screens/categories/galaxy/milkyWayScreen.dart';
import 'package:final_projesi/screens/categories/galaxy/whirlpoolScreen.dart';
import 'package:final_projesi/screens/categories/nebula/bubbleScreen.dart';
import 'package:final_projesi/screens/categories/nebula/butterflyScreen.dart';
import 'package:final_projesi/screens/categories/nebula/crabScreen.dart';
import 'package:final_projesi/screens/categories/nebula/helixScreen.dart';
import 'package:final_projesi/screens/categories/nebula/nebulaScreen.dart';
import 'package:final_projesi/screens/categories/nebula/orionScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/earthScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/jupiterScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/marsScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/mercuryScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/moonScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/neptuneScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/plutoScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/saturnScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/solarSystemScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/sunScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/uranusScreen.dart';
import 'package:final_projesi/screens/categories/solarSystem/venusScreen.dart';
import 'package:final_projesi/screens/categories/star/antaresScreen.dart';
import 'package:final_projesi/screens/categories/star/betelgueseScreen.dart';
import 'package:final_projesi/screens/categories/star/siriusScreen.dart';
import 'package:final_projesi/screens/categories/star/starScreen.dart';
import 'package:final_projesi/screens/categories/star/stephenson2-18Screen.dart';
import 'package:final_projesi/screens/categories/star/vegaScreen.dart';
import 'package:final_projesi/screens/contactScreen.dart';
import 'package:final_projesi/screens/profileScreen.dart';
import 'package:final_projesi/screens/registerScreen.dart';
import 'package:flutter/material.dart';

import 'screens/homeScreen.dart';
import 'screens/loginScreen.dart';
import 'screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Celestial Hub',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomeScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        '/contact': (context) => ContactScreen(),
        '/solarsystem': (context) => SolarSystemScreen(),
        '/galaxy': (context) => GalaxyScreen(),
        '/nebula': (context) => NebulaScreen(),
        '/blackhole': (context) => BlackHoleScreen(),
        '/star': (context) => StarScreen(),
        '/sun': (context) => SunScreen(),
        '/mercury': (context) => MercuryScreen(),
        '/venus': (context) => VenusScreen(),
        '/earth': (context) => EarthScreen(),
        '/moon': (context) => MoonScreen(),
        '/mars': (context) => MarsScreen(),
        '/jupiter': (context) => JupiterScreen(),
        '/saturn': (context) => SaturnScreen(),
        '/uranus': (context) => UranusScreen(),
        '/neptune': (context) => NeptuneScreen(),
        '/pluto': (context) => PlutoScreen(),
        '/milkyway': (context) => MilkyWayScreen(),
        '/andromeda': (context) => AndromedaScreen(),
        '/blackeye': (context) => BlackEyeScreen(),
        '/cartwheel': (context) => CartwheelScreen(),
        '/whirlpool': (context) => WhirlpoolScreen(),
        '/sirius': (context) => SiriusScreen(),
        '/betelguese': (context) => BetelgueseScreen(),
        '/vega': (context) => VegaScreen(),
        '/antares': (context) => AntaresScreen(),
        '/stephenson': (context) => StephensonScreen(),
        '/orion': (context) => OrionScreen(),
        '/helix': (context) => HelixScreen(),
        '/crab': (context) => CrabScreen(),
        '/butterfly': (context) => ButterflyScreen(),
        '/bubble': (context) => BubbleScreen(),
        '/sagittariusa': (context) => SagittariusAScreen(),
        '/cygnus': (context) => CygnusScreen(),
        '/ton': (context) => TonScreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WelcomeScreen(),
    );
  }
}

