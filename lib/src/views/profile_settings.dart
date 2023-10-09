import 'package:flutter/material.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  _ProfileSettingsScreenState createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Settings'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Stack(children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/admin.webp'),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.edit,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'First Name'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Last Name'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Bio'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Date of Birth'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Location'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Website'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                // final invoice = Invoice(
                //   item: itemController.text,
                //   quantity: int.tryParse(quantityController.text) ?? 0,
                //   price: double.tryParse(priceController.text) ?? 0.0,
                // );

                // invoiceList.add(invoice);

                // itemController.clear();
                // quantityController.clear();
                // priceController.clear();
                Navigator.pop(context);
              },
              child: const Text('Save changes'),
            ),
          ],
        ),
      ),
    );
  }
}
