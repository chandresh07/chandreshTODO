

import 'package:flutter/material.dart';
import 'package:new_dedo/note_detail.dart';

class NoteList extends StatefulWidget {
  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('notes'),
      ),
      body: getNoteListView(),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => NoteDetail(),));
        },
        child: Icon(Icons.add_circle,color: Colors.blue,),

      ),

    );
  }

  ListView getNoteListView(){
    return ListView.builder(
      itemCount: count,



        itemBuilder:(BuildContext context, int position){
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.arrow_forward),
            ),
            title:  Text('name'),
            subtitle: Text('date'),
            trailing: Icon(Icons.delete),

            onTap: (){
              debugPrint('fdf');
            },

          ),
        );
        });
  }

}
