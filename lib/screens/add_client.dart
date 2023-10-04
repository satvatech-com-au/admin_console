import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quickalert/quickalert.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widget/textcontroller.dart';
class AddClient extends StatefulWidget {
   AddClient({super.key});

  @override
  State<AddClient> createState() => _AddClientState();
  
}

class _AddClientState extends State<AddClient> {
  TextEditingController customInputController = TextEditingController();
   bool _emailInputIsVaild = true;
   bool _showPassword = true;
   bool _obscureText = true;

    final _theList =[
    "Name",
    "Contact",
    "Email"
  ];
   String? selectedValue = "Name";

   TextController textController = TextController();

  

  @override
  Widget build(BuildContext context) {
     selectedValue = _theList[0];
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue.shade100,
        centerTitle: true,
        title:Text("Add Client",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headline5,
                  keyboardType: TextInputType.emailAddress,
                  controller: textController.emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.drag_indicator),
                    labelText: "Company Name :",
                    errorText: _emailInputIsVaild ? null :"shhhs",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  onSubmitted: (value) => Fluttertoast.showToast(
                    msg: "Please enter Email"
                  ),
                  onChanged: (String value){
                    if (value == null){
                      setState(() {
                        _emailInputIsVaild =false;
                      });
                    }else{
                      setState(() {
                        _emailInputIsVaild = true;
                      });
                    }
                  },
                ),
              ),
                SizedBox(height: 15,),
              SizedBox(
                height: 60,
                child: TextField(
                  obscureText: _showPassword,
                  style: Theme.of(context).textTheme.headline5,
                  controller: textController.businessRegController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.business),
                    labelText: "Business Reg no:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  
                ),
              ),
                SizedBox(height: 15,),
              SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headline5,
                  controller: textController.businessTypeController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.type_specimen),
                    labelText: "Business Type:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  
                ),
              ),
                SizedBox(height: 15,),
              TextField(
                style: Theme.of(context).textTheme.headline5,
                controller: textController.businessDescriptionController,
                textCapitalization: TextCapitalization.sentences,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "type something",
                  labelText: "Business Description:",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                
              ),
                
               SizedBox(height: 15,),
               SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headline5,
                  controller: textController.companyEmailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Company  Email:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  
                ),
              ),
               SizedBox(height: 15,),
               SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headline4,
                  controller: textController.websiteController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.web),
                    labelText: "Website:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  
                ),
              ),
               SizedBox(height: 15,),
               SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headline4,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.contact_mail),
                    labelText: "Contact:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 15,),
               SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headline5,
                  controller: textController.subscriptionController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.subscriptions),
                    labelText: "Subscription  Plan:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 15,),
              Text("HR Details",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
            SizedBox(height: 10,),
             SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headline5,
                  controller: textController.hrNameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.hd_rounded),
                    labelText: "HR Name:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 15,),
               SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headline5,
                  controller: textController.hrContactController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.contact_mail),
                    labelText: "Contacts:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 15,),
               SizedBox(
                height: 60,
                child: TextField(
                  style: Theme.of(context).textTheme.headline5,
                  controller: textController.hrEmailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  
                ),
              ),
              SizedBox(height: 15,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
                ),
                onPressed: (){
                QuickAlert.show( 
                context: context,
                type: QuickAlertType.success,
                text: 'Client Added Successfully!',
                );
                },
                 child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
            )
              
            ],
          ),
        ),
      ),
    );
  }
}

