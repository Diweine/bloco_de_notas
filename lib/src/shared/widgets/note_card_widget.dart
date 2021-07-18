import 'package:flutter/material.dart';
import 'package:bloco_de_notas/src/shared/models/note_data_model.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';

class NoteCard extends StatelessWidget {
  final NoteData noteData;
  final double tamIcon = 18;

  const NoteCard({Key? key, required this.noteData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 1.0,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        color: AppColors.cinza,
        child: Flex(
          mainAxisSize: MainAxisSize.min,
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 1.0,
              margin: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                margin: EdgeInsets.zero,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  color: noteData.colorNote, //cor da nota
                ),
                width: double.infinity,
                child: Text(
                  noteData.title, //título da nota
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (noteData.schedulingDate != '')
                    Icon(
                      Icons.date_range,
                      color: AppColors.preto54,
                      size: tamIcon,
                    ),
                  if (noteData.ishasAttachment)
                    Icon(
                      Icons.attach_file_outlined,
                      color: AppColors.preto54,
                      size: tamIcon,
                    ),
                  if (noteData.isFavorite)
                    Icon(
                      Icons.favorite,
                      color: AppColors.preto54,
                      size: tamIcon,
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                noteData.contents,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Text(
                'Criação: ${noteData.creationDate}',
                style: TextStyle(
                  fontSize: 10.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
