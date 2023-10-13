part of 'announcement_tab_bloc.dart';

@freezed
class AnnouncementTabEvent with _$AnnouncementTabEvent {
  //Event displaying input section
  const factory AnnouncementTabEvent.showInputSection() = ShowInputSection;

  //Event ot get all annoucements
  const factory AnnouncementTabEvent.getAllAnnouncements() =
      GetAllAnnouncements;

  //Event to add annoumcement
  const factory AnnouncementTabEvent.addAnnouncement() = AddAnnouncement;

  //Event to pick a pdf file from storage
  const factory AnnouncementTabEvent.pickFile() = PickFile;

  //Event to delete an annoumcement while cliking T icon
  factory AnnouncementTabEvent.deleteAnnouncement({required int id}) =
      DeleteAnnouncement;

  //Event to show replay input
  factory AnnouncementTabEvent.showReplyInput(
      {required AnnouncementModel? announcementModel}) = ShowReplyInput;

  //Event to send replay
  const factory AnnouncementTabEvent.sendReply(
      {required AnnouncementModel model}) = SendReply;

  //Event to like
  const factory AnnouncementTabEvent.like({required AnnouncementModel model}) =
      Like;
}
