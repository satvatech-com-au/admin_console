import 'package:flutter/material.dart';

import 'screens/transaction_screen.dart';

class DetailsScreen extends StatefulWidget {

  const DetailsScreen({super.key, required this.selectedIndex,});
    final int selectedIndex;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("Company Details",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 90.0,
              right: 60.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.blue,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 90.0,
              right: 60.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: Text("Company Name",style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const Divider(),
          const Text("General Information",style: TextStyle(fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.contact_mail),
                        SizedBox(width: 5,),
                          Text("Email :",style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 10,),
                          Text("www.huhuhuhuhuhu@.com")
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.contact_phone),
                        SizedBox(width: 5,),
                          Text("Contact :",style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 10,),
                          Text("+ 233 887-344-5479")
                      ],
                    ),
                  ),
                ),
                 const SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 5,),
                          Text("Location:",style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 10,),
                          Text("Accra - Ghana")
                      ],
                    ),
                  ),
                ),
                 const SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.web),
                        SizedBox(width: 5,),
                          Text("Website:",style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 10,),
                          Text("http:www.grupi.n")
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                 Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.room_service),
                        SizedBox(width: 5,),
                          Text("Service:",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text("Marketing")
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const Transactions())),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Transactions"),
                          Icon(Icons.keyboard_double_arrow_right)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
    );
  }
}
