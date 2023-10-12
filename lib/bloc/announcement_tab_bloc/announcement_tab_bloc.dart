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
  TextEditingController announcementController = TextEditingController();
  AnnouncementDataProvider announcementDataProvider =
      AnnouncementDataProvider();
  AnnouncementTabBloc() : super(AnnouncementTabState.initial()) {
    on<GetAllAnnouncements>((event, emit) async {
      await announcementDataProvider
          .getAllAnnouncements()
          .then((announcementList) {
        if (announcementList.isEmpty) {
          emit(state
              .copyWith(showInitialMessageScreen: true, announcementList: []));
        } else {
          emit(state.copyWith(
              showInitialMessageScreen: false,
              announcementList: announcementList));
        }
      });
    });

    on<ShowInputSection>((event, emit) {
      emit(state.copyWith(showInitialMessageScreen: false));
    });

    on<AddAnnouncement>((event, emit) async {
      if (announcementController.text.isNotEmpty) {
        await announcementDataProvider
            .addMessageData(
                announcementModel:
                    AnnouncementModel(message: announcementController.text))
            .then((_) {
          announcementController.clear();
        });
        add(const GetAllAnnouncements());
      }
    });
  }
}
