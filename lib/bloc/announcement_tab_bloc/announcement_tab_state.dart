part of 'announcement_tab_bloc.dart';

@freezed
class AnnouncementTabState with _$AnnouncementTabState {
  const factory AnnouncementTabState(
      {required List<AnnouncementModel> announcementList,
      required bool showInitialMessageScreen,
      required String? pickedFileName,
      required AnnouncementModel? replayItem}) = _Initial;
  factory AnnouncementTabState.initial() => const AnnouncementTabState(
        announcementList: [],
        showInitialMessageScreen: true,
        pickedFileName: null,
        replayItem: null,
      );
}
