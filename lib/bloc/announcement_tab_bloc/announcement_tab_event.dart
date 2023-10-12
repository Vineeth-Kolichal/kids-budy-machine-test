part of 'announcement_tab_bloc.dart';

@freezed
class AnnouncementTabEvent with _$AnnouncementTabEvent {
  const factory AnnouncementTabEvent.showInputSection() = ShowInputSection;
  const factory AnnouncementTabEvent.getAllAnnouncements() =
      GetAllAnnouncements;
  factory AnnouncementTabEvent.addAnnouncement() = AddAnnouncement;
}
