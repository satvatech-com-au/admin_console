import 'package:flutter/material.dart';
import 'package:admin_console/src/screens/admin_login.dart';
import 'package:admin_console/src/screens/billing.dart';
import 'package:admin_console/src/screens/dashboard.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: screenWidth * .8,
      color: Colors.blue.shade100,
      child: SafeArea(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            ListTile(
              title: const Text(
                'Dashboard',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ));
              },
            ),
            ListTile(
              title: const Text(
                'Clients',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ));
              },
            ),
            ListTile(
              title: const Text(
                'Billing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const BillingScreen(),
                ));
              },
            ),
            ListTile(
              title: const Text(
                'Reports',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            const Spacer(
              flex: 2,
            ),
            ListTile(
              title: const Text(
                'Log out',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const AdminLoginScreen(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
