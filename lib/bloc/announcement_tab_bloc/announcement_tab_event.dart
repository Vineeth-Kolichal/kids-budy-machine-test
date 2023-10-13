part of 'announcement_tab_bloc.dart';

@freezed
class AnnouncementTabEvent with _$AnnouncementTabEvent {
  const factory AnnouncementTabEvent.showInputSection() = ShowInputSection;
  const factory AnnouncementTabEvent.getAllAnnouncements() =
      GetAllAnnouncements;
  const factory AnnouncementTabEvent.addAnnouncement() = AddAnnouncement;
  const factory AnnouncementTabEvent.pickFile() = PickFile;
  factory AnnouncementTabEvent.deleteAnnouncement({required int id}) =
      DeleteAnnouncement;
  factory AnnouncementTabEvent.showReplyInput(
      {required AnnouncementModel? announcementModel}) = ShowReplyInput;
  const factory AnnouncementTabEvent.sendReply({required AnnouncementModel model}) = SendReply;
  const factory AnnouncementTabEvent.like({required AnnouncementModel model}) = Like;
}

