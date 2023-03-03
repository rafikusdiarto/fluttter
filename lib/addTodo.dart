import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff1d1e26),
            Color(0xff252041),
          ]),
        ),
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              IconButton(onPressed: (){}, 
              icon: Icon(
                CupertinoIcons.arrow_left,
                color: Colors.white,
                size: 28,
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create",
                        style: TextStyle(
                          fontSize: 33,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "New Todo",
                        style: TextStyle(
                          fontSize: 33,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                        SizedBox(
                          height: 25,
                        ),
                        label("Task Title"),
                        SizedBox(height: 12,),
                        title(context),
                        SizedBox(
                          height: 30,
                        ),
                        label("Task Type"),
                        SizedBox(
                          height: 12,
                        ),
                            Row(
                              children: [
                                chipData("Urgent", 0xff2664fa),
                                SizedBox(
                                  width: 15,
                                ),
                                chipData("Santuy", 0xffffb703),
                                SizedBox(
                                  width: 15,
                                ),
                                chipData("Planned", 0xff2a9d8f),
                              ],
                            ),
                    ],
                  ),
                  )
            ],
          ),
        )
      ),
    );
  }
}

Widget chipData(String label, int color){
  return Chip(
    backgroundColor: Color(color),
    label: Text(
      label,
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    ),
    labelPadding: EdgeInsets.symmetric(
      horizontal: 17,
      vertical: 3.8,
    ),
    );
}


Widget title(context){
  return Container(
    height: 55,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Color(0xff2a2e3d),
      borderRadius: BorderRadius.circular(15),
    ),
    child: TextFormField(
      style: TextStyle(
        color: Colors.grey,
        fontSize: 17,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Item To-do",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        contentPadding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
      ),
    ),
  );
}


Widget label(String label){
  return Text(
    label,
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 16.5,
      letterSpacing: 0.2,
    ),
  );
}
