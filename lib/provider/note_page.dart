import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_practice/provider/list/note_provider.dart';

import '../add_note_page.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    print("Build Called!!");
    return Scaffold(
      appBar: AppBar(
        title: Text("Note"),
      ),
      body: Consumer<NoteProvider>(
        builder: (_,provider,_){
          var note = provider.getNotes();
          return note.isEmpty ? Center(child: Text("No Notes Added Yet!!!")) :  ListView.builder(
            itemCount: note.length,
            itemBuilder: (_,index){
              return  ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  child: Text("${index+1}"),
                ),
                title: Text(note[index].title),
                subtitle: Text(note[index].desc),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNotePage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
