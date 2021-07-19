import 'package:bloco_de_notas/src/features/new_note/new_note.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/widgets/note_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'note_list_controller.dart';

class NoteListPage extends StatefulWidget {
  NoteListPage({Key? key}) : super(key: key);

  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteListPage> {
  final controller = NoteListController();
  final scrollcontroller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 86.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: AppColors.blueGradientAppBar),
          ),
          centerTitle: true,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backwardsCompatibility: false,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          title: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/notes_logo.png",
                  height: 35.0,
                ),
                Image.asset(
                  "assets/images/journal.png",
                  height: 40.0,
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar',
                  hintStyle: TextStyle(
                    color: AppColors.preto54,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: AppColors.preto54,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  itemCount: controller.listnotes.length,
                  itemBuilder: (context, index) =>
                      NoteCard(noteData: controller.listnotes[index]),
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.fit(1);
                  }),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => NewNotePage(),
                    ),
                  );
                },
                child: Container(
                  width: 56.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    gradient: AppColors.blueGradientButton,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 18.0,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.14),
                        offset: Offset(0.0, 6.0),
                        blurRadius: 10.0,
                      ),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0.0, 3),
                          blurRadius: 5.0,
                          spreadRadius: -1.0),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
