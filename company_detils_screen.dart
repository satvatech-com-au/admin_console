import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hr_potal/screens/camear.dart';
import 'package:hr_potal/screens/transaction_screen.dart';
import 'package:image_picker/image_picker.dart';

class DetailsScreen extends StatefulWidget {

   DetailsScreen({super.key, required this.selectedIndex,});
    final int selectedIndex;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  File? imageFile;
  
  
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
         Center(
           child: Stack(
             children:[ 
               Padding(
                 padding: EdgeInsets.only(top: 10),
                 child: GestureDetector(
                   onTap: () => getImage(source: ImageSource.gallery),
                   child: CircleAvatar(
                   radius: 70,
                               backgroundImage: imageFile != null? AssetImage("images/grown.png"):AssetImage("")
                               ),
                 ),
               ),
             Positioned(
               top: 100,
               left: 85,
               child: IconButton(onPressed: ()=>getImage(source: ImageSource.camera),
                icon: Icon(Icons.camera_alt,size: 40,))),
                
                 ]),
         ),
           Padding(
            padding: EdgeInsets.only(
              left: 90.0,
              right: 60.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: Text("Company Name",style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(),
          Text("General Information",style: TextStyle(fontWeight: FontWeight.bold)),
          Padding(
            padding: EdgeInsets.all(8.0),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                 SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                 SizedBox(height: 10,),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                SizedBox(height: 10,),
                 Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Transactions())),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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





  
   void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
      source: source,
      maxWidth: 640,
      maxHeight: 480,
      imageQuality: 80
      );
    if(file?.path != null){
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
