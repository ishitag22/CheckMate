import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class To_do extends StatefulWidget {
  const To_do({super.key});

  @override
  State<To_do> createState() => _To_doState();

}

class _To_doState extends State<To_do> {
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
                onPressed: (){add_task();},
            ),
        ),
      ),
    );
  }
  add_task(){
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    return AlertDialog(
      scrollable: true,
      title: Text('New Task'),
      content: SizedBox(
        height: height*0.35,
        width: width,
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                hintText: 'Task',
                icon: Icon(Icons.list_alt_outlined, color: Colors.purple,),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              )
        ),

        ],
          ),

        ),
      ),
    );
  }

}


