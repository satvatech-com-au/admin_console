import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue ,
        centerTitle: true,
        title: Text('Company Name',style:GoogleFonts.acme(
          textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        )),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Transactions",style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 25)),),
            ),
            SizedBox(height: 10,),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: ((context,index)=>Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("12- 08 -2022",style: GoogleFonts.acme()),
                    ),
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        showDialog(
                          context: context,
                           builder:(BuildContext context){
                            return AlertDialog(
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(child: CircleAvatar(radius: 30,backgroundColor: Colors.blue.shade100,
                                  child: Icon(Icons.check,weight: 40,),
                                  )),
                                  SizedBox(height: 5,),
                                  Center(child: Text("Sucessfully paid",style: GoogleFonts.acme(),)),
                                   SizedBox(height: 10,),
                                  Center(
                                    child: Container(
                                      height: 40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade100,
                                        borderRadius: BorderRadius.circular(10.0)
                                        ),
                                      child: Center(child: Text("€123",style:GoogleFonts.abel(),)),
                                    ),
                                  ),
                                   SizedBox(height: 10,),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     Text("From",style: GoogleFonts.acme(
                                      textStyle: TextStyle(fontSize: 17)
                                     ),),
                                      Text("Payment ID",style: GoogleFonts.acme(
                                         textStyle: TextStyle(fontSize: 17)
                                      ))
                                  ],
                                 ),
                                 SizedBox(height: 5,),
                                  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     Text("CC",style:GoogleFonts.abel(
                                       textStyle: TextStyle(fontSize: 15)
                                     ),),
                                      Text("#34E5R56",style: GoogleFonts.abel(
                                         textStyle: TextStyle(fontSize: 15)
                                      ))
                                  ],
                                 ),
                                 Divider(),
                                 SizedBox(height: 5,),
                                  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     Text("From",style: GoogleFonts.acme(
                                       textStyle: TextStyle(fontSize: 17)
                                     ),),
                                      Text("Dates",style: GoogleFonts.acme(
                                         textStyle: TextStyle(fontSize: 17)
                                      ))
                                  ],
                                 ),
                                 SizedBox(height: 5,),
                                  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                     Text("Company",style: GoogleFonts.abel(
                                       textStyle: TextStyle(fontSize: 16)
                                     ),),
                                      Text("01-22-23",style: GoogleFonts.abel(
                                         textStyle: TextStyle(fontSize: 16)
                                      ))
                                  ],
                                 ),
                                ],
                              ),
                              actions: [
                                   TextButton(
                                  onPressed: () {
                                  // Close the dialog
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close',style: TextStyle(color: Colors.blue.shade100,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            );

                           } 
                           );
                      },
                      child: Tile()),
                  )
                ],
              ),
            )),
             separatorBuilder: ((context,index)=> SizedBox()), 
             itemCount: 10)
             
      
      
          ],
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              radius: 30,
            ),
            title: Text("Insight Ghana",style: GoogleFonts.acme()),
            subtitle: Text("Success",style: GoogleFonts.roboto(
              textStyle: TextStyle(color: Colors.green)
            ),),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("GH&",style: GoogleFonts.acme()),
                Text("2:40 PM",style: GoogleFonts.roboto())
              ],
            ),
           );
  }
}