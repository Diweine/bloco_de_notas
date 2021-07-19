import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/models/note_data_model.dart';

class NoteListController {
  List<NoteData> listnotes = <NoteData>[
    NoteData(
        title: 'Não esquecer',
        contents:
            'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.',
        creationDate: '08/07/21', //new DateTime(2021, 7, 8),
        isFavorite: true,
        ishasAttachment: true,
        colorNote: AppColors.rosa,
        schedulingDate: '29/07/21'),
    NoteData(
        title: 'Reunião com os stakeholders',
        contents:
            '\u{2022} Ipsum dolor sit amet, consectur. \n \u{2022} Adipiscing elit, sed do eiusmod tempor incidi. \n \u{2022} Ut labore et dolore magna aliqua.',
        creationDate: '07/07/21',
        isFavorite: false,
        ishasAttachment: true,
        colorNote: AppColors.verde,
        schedulingDate: ''),
    NoteData(
        title: 'Lembretes para o médico',
        contents:
            'Lorem ipsum dolor , consectetur adicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        creationDate: '06/07/21',
        isFavorite: true,
        ishasAttachment: true,
        colorNote: AppColors.roxo1,
        schedulingDate: '29/07/21'),
    NoteData(
        title: 'Ideias para o novo app 2022',
        contents:
            '\u{2022} Ipsum dolor sit amet, consectur. \n \u{2022} Adipiscing elit, sed do eiusmod tempor incidi. \n \u{2022} Ut labore et dolore magna aliqua.',
        creationDate: '06/07/21',
        isFavorite: false,
        ishasAttachment: false,
        colorNote: AppColors.ciano,
        schedulingDate: ''),
    NoteData(
        title: 'Reunião do grupo de treinamento',
        contents:
            'Lorem ipsum dolor sit amet, consecter adipiscing elit, sed  incididunt ut labore et dolore aliqua.',
        creationDate: '06/07/21',
        isFavorite: true,
        ishasAttachment: true,
        colorNote: AppColors.amarelo,
        schedulingDate: ''),
  ];
}
