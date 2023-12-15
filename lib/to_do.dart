import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();

}

class _TodoState extends State<Todo> {
  String currentDate= DateFormat('dd-MM-yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentDate, style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 16.0,),
        child: Align(
          alignment: Alignment.bottomCenter,
          child:
            FloatingActionButton(
               backgroundColor: Colors.deepPurpleAccent,
                elevation: 0,
                child: Icon(Icons.add_box_rounded,),
                onPressed: ()=> add_task(context),
            ),
        ),
      ),
    );
  }
   add_task(BuildContext context){
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        scrollable: true,
        title: Text('New Task'),
        content: SizedBox(
          height: height * 0.35,
          width: width,
          child: Form(
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Task',
                      icon: Icon(
                        Icons.list_alt_outlined, color: Colors.deepPurpleAccent,),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    )
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      hintText: 'Description',
                      icon: Icon(CupertinoIcons.chat_bubble_2,
                        color: Colors.deepPurpleAccent,)
                  ),
                ),
                // SizedBox(height: 1.0,
                // child:
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){},
                          child: Text('Submit'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){},
                          child: Text('Cancel'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                      ),
                    ),
                    ),
                  ],
                ),
                // ),
              ],
            ),

          ),
        ),
      );
    }
    );
   }
}


