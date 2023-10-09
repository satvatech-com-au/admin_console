import 'package:flutter/material.dart';


class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue ,
        centerTitle: true,
        title: Text('Company Name',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Transactions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
                      child: Text("12th September,2022"),
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
                    child: Tile(),
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
              backgroundColor: Colors.red,
              radius: 30,
            ),
            title: Text("Insight Ghana"),
            subtitle: Text("Success",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("GH&"),
                Text("2:40 PM")
              ],
            ),
           );
  }
}