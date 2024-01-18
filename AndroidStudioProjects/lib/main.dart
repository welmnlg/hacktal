import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'sepakat',
          debugShowCheckedModeBanner: true,
          initialRoute: AppRoutes.loginOneScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}

// class AwalMasukScreen extends StatefulWidget {
//   @override
//   _AwalMasukScreenState createState() => _AwalMasukScreenState();
// }
//
// class _AwalMasukScreenState extends State<AwalMasukScreen> {
//   @override
//   void initState() {
//     super.initState();
//
//     // Delay for 2 seconds and then navigate to loginOneScreen
//     Future.delayed(Duration(seconds: 2), () {
//       if (mounted) {
//         // Check if the widget is still in the widget tree
//         Navigator.pushReplacementNamed(context, AppRoutes.loginOneScreen);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // Your splash screen UI here
//     return Scaffold(
//       body: Center(
//         child: Text('Splash Screen'),
//       ),
//     );
//   }
// }

