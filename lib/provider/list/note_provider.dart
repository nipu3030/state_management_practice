import 'package:flutter/widgets.dart';
import 'package:state_management_practice/note_model.dart';

class NoteProvider extends ChangeNotifier{

  List<NoteModel> _notes = [];

  //get Notes
  List<NoteModel> getNotes() => _notes;

  //events

  void addNote(NoteModel newNote){
    _notes.add(newNote);
    notifyListeners();
  }

  void updateNote(NoteModel newNote,int index){
    _notes[index]= newNote;
    notifyListeners();
  }

  void deleteNote(int index){
    _notes.removeAt(index);
    notifyListeners();
  }
}