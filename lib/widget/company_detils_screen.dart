import 'dart:io';

import 'package:admin_console/screens/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({
    super.key,
  });

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
        title:  Text("Company Details",
            style: GoogleFonts.acme(
              textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
            )),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Center(
            child: Stack(children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () => getImage(source: ImageSource.gallery),
                  child: CircleAvatar(
                      radius: 70,
                      backgroundImage: imageFile != null
                          ? AssetImage("images/grown.png")
                          : AssetImage("")),
                ),
              ),
              Positioned(
                  top: 100,
                  left: 85,
                  child: IconButton(
                      onPressed: () => getImage(source: ImageSource.camera),
                      icon: Icon(
                        Icons.camera_alt,
                        size: 40,
                      ))),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 90.0,
              right: 60.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: Text("Company Name",
                style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 20)))
          ),
          Divider(),
          Text("General Information",
              style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 20)),),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
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
                        SizedBox(
                          width: 5,
                        ),
                        Text("Email :",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 10,
                        ),
                        Text("www.huhuhuhuhuhu@.com",style: GoogleFonts.acme(),)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
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
                        SizedBox(
                          width: 5,
                        ),
                        Text("Contact :",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 10,
                        ),
                        Text("+ 233 887-344-5479",style: GoogleFonts.abel(),)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
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
                        SizedBox(
                          width: 5,
                        ),
                        Text("Location:",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Accra - Ghana",style: GoogleFonts.acme(),),
                            Text("Peace St Achimoto",style: GoogleFonts.acme(),),
                            Text("CS-123-56",style: GoogleFonts.acme(),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
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
                        SizedBox(
                          width: 5,
                        ),
                        Text("Website:",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 10,
                        ),
                        Text("http:www.grupi.n",style: GoogleFonts.acme(),)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
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
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Service:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Marketing",style: GoogleFonts.acme(),)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
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
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Description:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Text(
                                "ABC Company is a well-established technology company with a rich history of providing cutting-edge solutions. We pride ourselves on our commitment to excellence and our relentless pursuit of innovation. Our team of passionate experts works tirelessly to create products and services that transform industries and improve lives. With a global presence and a focus on customer satisfaction, we continue to be a trusted partner for businesses and individuals worldwide. Join us on our journey to shape the future of technology.",
                                style: GoogleFonts.acme(),))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 100,
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
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Achievements:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                       Expanded(child: Text("Award-Winning Products: Our commitment to quality and innovation has been recognized with numerous industry awards, including the prestigious Tech Innovator Award for three consecutive years",
                       style: GoogleFonts.acme(),))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 100,
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
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Vision:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                       Expanded(child: Text(
                        "At XYZ Company, our vision is to be a pioneering force in innovation, continuously pushing the boundaries of technology to improve lives and transform industries. We aspire to be the go-to partner for businesses seeking cutting-edge solutions that drive growth and sustainability. Our unwavering commitment to excellence, ethics, and social responsibility fuels our journey toward becoming a global leader known for driving positive change. We envision a future where our products and services positively impact individuals, communities, and the world at large, creating a brighter and more connected tomorrow.",
                        style: GoogleFonts.acme(),))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 30,backgroundImage: AssetImage("images/facebook.png"),backgroundColor: Colors.white,),
                    SizedBox(width: 5,),
                     CircleAvatar(radius: 30,backgroundImage: AssetImage("images/google.png"),backgroundColor: Colors.white,),
                     SizedBox(width: 5,),
                      CircleAvatar(radius: 30,backgroundImage: AssetImage("images/x.png"),backgroundColor: Colors.white,),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Transactions())),
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
                          Text("Transactions",style: GoogleFonts.acme(),),
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
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
        source: source, maxWidth: 640, maxHeight: 480, imageQuality: 80);
    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
