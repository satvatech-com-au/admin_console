import 'package:flutter/material.dart';
import 'package:hr_portal/src/views/profile_settings.dart';

class GeneralSettingsScreen extends StatelessWidget {
  const GeneralSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Profile settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileSettingsScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Security'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileSettingsScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Privacy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileSettingsScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Notifications'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileSettingsScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Account preferences'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileSettingsScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Help'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileSettingsScreen()),
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileSettingsScreen()),
              );
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
