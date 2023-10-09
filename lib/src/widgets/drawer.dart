import 'package:flutter/material.dart';
import 'package:hr_portal/src/views/admin_login.dart';
import 'package:hr_portal/src/views/billing.dart';
import 'package:hr_portal/src/views/dashboard.dart';
import 'package:hr_portal/src/views/general_settings.dart';
import 'package:hr_portal/src/views/transaction_history.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const Row(
              children: [
                Spacer(),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/admin.webp'),
                ),
                Spacer(
                  flex: 5,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 10),
              child: Text(
                'Ashley Cole',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            ListTile(
              leading: Image.asset(
                'assets/dashboards.png',
                height: 30,
              ),
              title: const Text(
                'Dashboard',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ));
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/customer.png',
                height: 30,
              ),
              title: const Text(
                'Clients',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ));
              },
            ),
            ListTile(
              leading: Image.asset(
                'assets/bill.png',
                height: 30,
              ),
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
              leading: Image.asset(
                'assets/report.png',
                height: 30,
              ),
              title: const Text(
                'Reports',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(
                'assets/report.png',
                height: 30,
              ),
              title: const Text(
                'Transaction history',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const TransactionHistoryScreen(),
                ));
              },
            ),
            const Spacer(
              flex: 6,
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const GeneralSettingsScreen(),
                ));
              },
            ),
            ListTile(
              title: const Text(
                'Log out',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              leading: const Icon(
                Icons.login_outlined,
                color: Colors.black,
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const AdminLoginScreen(),
                ));
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
