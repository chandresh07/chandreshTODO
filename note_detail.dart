
import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {  @override
  State<NoteDetail> createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {

  static var _priorities = ['high','Low'];
  TextEditingController titleControler = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
        children: <Widget>[


          //first element
          ListTile(
          title: DropdownButton(
          items: _priorities.map((String dropDownStringItem){
            return DropdownMenuItem<String>(
              value : dropDownStringItem,
                child: Text(dropDownStringItem),
                );
               }).toList(),
             value: 'Low',
             onChanged: (valueSelectedByUser){
            setState(() {
              debugPrint('user selected $valueSelectedByUser');
            });
             },
          ),
          ),

          //second Element
          Padding(padding:
          EdgeInsets.only(top: 10.0,right: 10.0),
            child: TextField(
              controller: titleControler,
              onChanged: (value){
                debugPrint('changed');
              },
                   decoration: InputDecoration(
                   labelText: 'title',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                      )
                      ),
                    ),
                  )
               ],
            ),
         ),
    );
  }}
