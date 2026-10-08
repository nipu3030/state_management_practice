import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_practice/note_model.dart';
import 'package:state_management_practice/provider/list/note_provider.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {

   var titleController = TextEditingController();
   var descController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: descController,
              decoration: InputDecoration(
                hintText: "Description",
              ),
            ),
            SizedBox(height: 40,),
           Row(
             children: [
               ElevatedButton(onPressed: (){
                 Navigator.pop(context);
               }, child: Text("Cancel")),
               SizedBox(width: 10,),
               ElevatedButton(onPressed: (){
                 context.read<NoteProvider>().addNote(NoteModel(title: titleController.text, desc: descController.text));
                 Navigator.pop(context);
               }, child: Text("Save")),
             ],
           )
          ],
        ),
      ),
    );
  }
}
