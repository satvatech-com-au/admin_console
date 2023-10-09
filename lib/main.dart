import 'package:flutter/material.dart';
import 'package:hr_portal/src/views/admin_login.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // final status = await Permission.storage.request();
  // if (status.isGranted) {

  // } else {}
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HR portal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue.shade100,
      ),
      home: const AdminLoginScreen(),
    );
  }
}
