import 'package:note_crud/main.dart';


class NoteForListing {
  String noteID;
  String noteTitle;
  DateTime createDateTime;
  DateTime lastestEditDateTime;

  NoteForListing({
    this.noteID,
    this.noteTitle,
    this.createDateTime,
    this.lastestEditDateTime

  });
}