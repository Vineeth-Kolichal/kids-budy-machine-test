import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_buddy/data/data_providers/announcement_data_providers/announcement_data_providers.dart';
import '../../data/models/announcement_model/announcement_model.dart';

part 'announcement_tab_event.dart';
part 'announcement_tab_state.dart';
part 'announcement_tab_bloc.freezed.dart';

class AnnouncementTabBloc
    extends Bloc<AnnouncementTabEvent, AnnouncementTabState> {
  //Text editing controller for textform field used in message section
  TextEditingController announcementController = TextEditingController();

  //Date provider class object
  AnnouncementDataProvider announcementDataProvider =
      AnnouncementDataProvider();

  File? pickedFile;
  AnnouncementTabBloc() : super(AnnouncementTabState.initial()) {
    //get all announcement model objects an  emit to UI
    on<GetAllAnnouncements>((event, emit) async {
      await announcementDataProvider
          .getAllAnnouncements()
          .then((announcementList) {
        if (announcementList.isEmpty) {
          emit(state.copyWith(
              showInitialMessageScreen: true,
              announcementList: [],
              pickedFileName: null,
              replayItem: null));
        } else {
          emit(state.copyWith(
              showInitialMessageScreen: false,
              announcementList: announcementList,
              pickedFileName: null,
              replayItem: null));
        }
      });
    });
    //Show input arear in UI
    on<ShowInputSection>((event, emit) {
      emit(state.copyWith(showInitialMessageScreen: false));
    });


    //Adding new announcement
    on<AddAnnouncement>((event, emit) async {
      if (announcementController.text.isNotEmpty) {
        await announcementDataProvider
            .addMessageData(
                announcementModel: AnnouncementModel(
          message: announcementController.text,
          time: DateTime.now(),
          filePath: (pickedFile != null) ? pickedFile!.path : null,
          likeCount: 0,
        ))
            .then((_) {
          announcementController.clear();
          pickedFile = null;
        });
        add(const GetAllAnnouncements());
      }
    });

    //Deleting an announcement while clicking T icon
    on<DeleteAnnouncement>((event, emit) async {
      await announcementDataProvider.deleteAnnouncement(event.id);
      add(const GetAllAnnouncements());
    });


    //Pick document file
    on<PickFile>((event, emit) async {
      await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: [
          'pdf',
        ],
      ).then((value) async {
        if (value != null) {
          pickedFile = File(value.paths[0]!);
          List<String> res = pickedFile!.path.split('/');
          emit(state.copyWith(pickedFileName: res.last));
        }
        return null;
      });
    });


    //showing replay input section while clicking replay in messagetile
    on<ShowReplyInput>((event, emit) {
      emit(state.copyWith(replayItem: event.announcementModel));
    });
    

    //adding replay to database
    on<SendReply>((event, emit) async {
      event.model.replays.add(announcementController.text.trim());
      await announcementDataProvider.addReply(event.model).then((_) {
        announcementController.clear();
        add(const GetAllAnnouncements());
      });
    });
  }
}
