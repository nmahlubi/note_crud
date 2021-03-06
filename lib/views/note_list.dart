import 'package:flutter/material.dart';
import 'package:note_crud/models/note_for_listing.dart';

class NoteList extends StatelessWidget {

  final notes =[
    new NoteForListing(
        noteID: "1",
        createDateTime: DateTime.now(),
        lastestEditDateTime: DateTime.now(),
        noteTitle: "Note 1"
    ),
    new NoteForListing(
        noteID: "2",
        createDateTime: DateTime.now(),
        lastestEditDateTime: DateTime.now(),
        noteTitle: "Note 2"
    ),
    new NoteForListing(
        noteID: "3",
        createDateTime: DateTime.now(),
        lastestEditDateTime: DateTime.now(),
        noteTitle: "Note 3"
    ),
  ];

  String formatDateTime(DateTime dateTime){
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('List of notes')),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (__, ___) => Divider(height: 1, color: Colors.green),
        itemBuilder: (__, index){
            return ListTile(
              title: Text(
                notes[index].noteTitle,
              style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              subtitle: Text('Last edited on ${formatDateTime(notes[index].lastestEditDateTime)}'),
            );
           },
            itemCount: notes.length,
          ),
        );
  }
}
