import 'package:admin_console/screens/add_client.dart';
import 'package:admin_console/widget/company_detils_screen.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Clients extends StatefulWidget {
  const Clients({super.key});

  @override
  State<Clients> createState() => _ClientsState();
}

class _ClientsState extends State<Clients> {
  
  TextEditingController textController = TextEditingController();

  mycall(String call){

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text("Clients",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          AnimSearchBar(
            width: 300, 
            textController: textController,
             onSuffixTap: (){
              setState(() {
                textController.clear();
              });
             },
              onSubmitted: mycall),
          
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: ((context ,index) => Slidable(
                  endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              children: [
                                const SlidableAction(
                                  onPressed: null,
                                  backgroundColor: Color(0xFFFE4A49),
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete,
                                  label: 'Delete',
                                ),
                                SlidableAction(
                                  onPressed: null,
                                  backgroundColor: Colors.blue.shade400,
                                  foregroundColor: Colors.white,
                                  icon: Icons.remove_red_eye,
                                  label: 'View',
                                ),
                              ],
                            ),
                  
                  child: productCard())), 
                separatorBuilder: ((context ,index)=>SizedBox(height: 7,)),
                 itemCount: 8)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => AddClient())));
      },child: Icon(Icons.person_add),),
    );
  }
}












class productCard extends StatefulWidget {
  const productCard({
    super.key,
  });

  @override
  State<productCard> createState() => _productCardState();
}

class _productCardState extends State<productCard> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen())),
      child: Container(
       height: 100,
       width: double.infinity,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         color: Colors.blue.shade100,
        //  boxShadow: [
        //    BoxShadow(
        //      color: Colors.grey.shade500,
        //      offset: const Offset(6, 6),
        //      spreadRadius: 1,
        //      blurRadius: 15,
        //    ),
        //  ],
       ),
       child:  Padding(
         padding: const EdgeInsets.all(8.0),
         child:  Row(
          
           children: [
             const CircleAvatar(
               radius: 30,
               backgroundColor: Colors.black,
             ),
             const SizedBox(
               width: 10,
             ),
             const Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Company Name"),
                 Text("Company ID"),
                 
               ],
             ),
             SizedBox(width: 70,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text("Contact"),
                 Text("Time"),
               ],
             )
           ],
         ),
       ),
      ),
    );
  }
}