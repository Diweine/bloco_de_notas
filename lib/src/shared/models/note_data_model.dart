import 'package:flutter/cupertino.dart';

class NoteData {
  final String title;
  final String contents;
  final String creationDate;
  final bool isFavorite;
  final bool ishasAttachment;
  final Color colorNote;
  final String schedulingDate;

  NoteData(
      {required this.title,
      required this.contents,
      required this.creationDate, // = new DateTime(2021,7,17),
      required this.isFavorite,
      required this.ishasAttachment,
      required this.colorNote,
      required this.schedulingDate});
}
