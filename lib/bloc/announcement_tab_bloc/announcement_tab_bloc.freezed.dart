// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnnouncementTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showInputSection,
    required TResult Function() getAllAnnouncements,
    required TResult Function() addAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showInputSection,
    TResult? Function()? getAllAnnouncements,
    TResult? Function()? addAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showInputSection,
    TResult Function()? getAllAnnouncements,
    TResult Function()? addAnnouncement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowInputSection value) showInputSection,
    required TResult Function(GetAllAnnouncements value) getAllAnnouncements,
    required TResult Function(AddAnnouncement value) addAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowInputSection value)? showInputSection,
    TResult? Function(GetAllAnnouncements value)? getAllAnnouncements,
    TResult? Function(AddAnnouncement value)? addAnnouncement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowInputSection value)? showInputSection,
    TResult Function(GetAllAnnouncements value)? getAllAnnouncements,
    TResult Function(AddAnnouncement value)? addAnnouncement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementTabEventCopyWith<$Res> {
  factory $AnnouncementTabEventCopyWith(AnnouncementTabEvent value,
          $Res Function(AnnouncementTabEvent) then) =
      _$AnnouncementTabEventCopyWithImpl<$Res, AnnouncementTabEvent>;
}

/// @nodoc
class _$AnnouncementTabEventCopyWithImpl<$Res,
        $Val extends AnnouncementTabEvent>
    implements $AnnouncementTabEventCopyWith<$Res> {
  _$AnnouncementTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowInputSectionImplCopyWith<$Res> {
  factory _$$ShowInputSectionImplCopyWith(_$ShowInputSectionImpl value,
          $Res Function(_$ShowInputSectionImpl) then) =
      __$$ShowInputSectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowInputSectionImplCopyWithImpl<$Res>
    extends _$AnnouncementTabEventCopyWithImpl<$Res, _$ShowInputSectionImpl>
    implements _$$ShowInputSectionImplCopyWith<$Res> {
  __$$ShowInputSectionImplCopyWithImpl(_$ShowInputSectionImpl _value,
      $Res Function(_$ShowInputSectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowInputSectionImpl
    with DiagnosticableTreeMixin
    implements ShowInputSection {
  const _$ShowInputSectionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnnouncementTabEvent.showInputSection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AnnouncementTabEvent.showInputSection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowInputSectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showInputSection,
    required TResult Function() getAllAnnouncements,
    required TResult Function() addAnnouncement,
  }) {
    return showInputSection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showInputSection,
    TResult? Function()? getAllAnnouncements,
    TResult? Function()? addAnnouncement,
  }) {
    return showInputSection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showInputSection,
    TResult Function()? getAllAnnouncements,
    TResult Function()? addAnnouncement,
    required TResult orElse(),
  }) {
    if (showInputSection != null) {
      return showInputSection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowInputSection value) showInputSection,
    required TResult Function(GetAllAnnouncements value) getAllAnnouncements,
    required TResult Function(AddAnnouncement value) addAnnouncement,
  }) {
    return showInputSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowInputSection value)? showInputSection,
    TResult? Function(GetAllAnnouncements value)? getAllAnnouncements,
    TResult? Function(AddAnnouncement value)? addAnnouncement,
  }) {
    return showInputSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowInputSection value)? showInputSection,
    TResult Function(GetAllAnnouncements value)? getAllAnnouncements,
    TResult Function(AddAnnouncement value)? addAnnouncement,
    required TResult orElse(),
  }) {
    if (showInputSection != null) {
      return showInputSection(this);
    }
    return orElse();
  }
}

abstract class ShowInputSection implements AnnouncementTabEvent {
  const factory ShowInputSection() = _$ShowInputSectionImpl;
}

/// @nodoc
abstract class _$$GetAllAnnouncementsImplCopyWith<$Res> {
  factory _$$GetAllAnnouncementsImplCopyWith(_$GetAllAnnouncementsImpl value,
          $Res Function(_$GetAllAnnouncementsImpl) then) =
      __$$GetAllAnnouncementsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllAnnouncementsImplCopyWithImpl<$Res>
    extends _$AnnouncementTabEventCopyWithImpl<$Res, _$GetAllAnnouncementsImpl>
    implements _$$GetAllAnnouncementsImplCopyWith<$Res> {
  __$$GetAllAnnouncementsImplCopyWithImpl(_$GetAllAnnouncementsImpl _value,
      $Res Function(_$GetAllAnnouncementsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllAnnouncementsImpl
    with DiagnosticableTreeMixin
    implements GetAllAnnouncements {
  const _$GetAllAnnouncementsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnnouncementTabEvent.getAllAnnouncements()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AnnouncementTabEvent.getAllAnnouncements'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllAnnouncementsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showInputSection,
    required TResult Function() getAllAnnouncements,
    required TResult Function() addAnnouncement,
  }) {
    return getAllAnnouncements();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showInputSection,
    TResult? Function()? getAllAnnouncements,
    TResult? Function()? addAnnouncement,
  }) {
    return getAllAnnouncements?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showInputSection,
    TResult Function()? getAllAnnouncements,
    TResult Function()? addAnnouncement,
    required TResult orElse(),
  }) {
    if (getAllAnnouncements != null) {
      return getAllAnnouncements();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowInputSection value) showInputSection,
    required TResult Function(GetAllAnnouncements value) getAllAnnouncements,
    required TResult Function(AddAnnouncement value) addAnnouncement,
  }) {
    return getAllAnnouncements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowInputSection value)? showInputSection,
    TResult? Function(GetAllAnnouncements value)? getAllAnnouncements,
    TResult? Function(AddAnnouncement value)? addAnnouncement,
  }) {
    return getAllAnnouncements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowInputSection value)? showInputSection,
    TResult Function(GetAllAnnouncements value)? getAllAnnouncements,
    TResult Function(AddAnnouncement value)? addAnnouncement,
    required TResult orElse(),
  }) {
    if (getAllAnnouncements != null) {
      return getAllAnnouncements(this);
    }
    return orElse();
  }
}

abstract class GetAllAnnouncements implements AnnouncementTabEvent {
  const factory GetAllAnnouncements() = _$GetAllAnnouncementsImpl;
}

/// @nodoc
abstract class _$$AddAnnouncementImplCopyWith<$Res> {
  factory _$$AddAnnouncementImplCopyWith(_$AddAnnouncementImpl value,
          $Res Function(_$AddAnnouncementImpl) then) =
      __$$AddAnnouncementImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddAnnouncementImplCopyWithImpl<$Res>
    extends _$AnnouncementTabEventCopyWithImpl<$Res, _$AddAnnouncementImpl>
    implements _$$AddAnnouncementImplCopyWith<$Res> {
  __$$AddAnnouncementImplCopyWithImpl(
      _$AddAnnouncementImpl _value, $Res Function(_$AddAnnouncementImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddAnnouncementImpl
    with DiagnosticableTreeMixin
    implements AddAnnouncement {
  _$AddAnnouncementImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnnouncementTabEvent.addAnnouncement()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AnnouncementTabEvent.addAnnouncement'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddAnnouncementImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showInputSection,
    required TResult Function() getAllAnnouncements,
    required TResult Function() addAnnouncement,
  }) {
    return addAnnouncement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showInputSection,
    TResult? Function()? getAllAnnouncements,
    TResult? Function()? addAnnouncement,
  }) {
    return addAnnouncement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showInputSection,
    TResult Function()? getAllAnnouncements,
    TResult Function()? addAnnouncement,
    required TResult orElse(),
  }) {
    if (addAnnouncement != null) {
      return addAnnouncement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowInputSection value) showInputSection,
    required TResult Function(GetAllAnnouncements value) getAllAnnouncements,
    required TResult Function(AddAnnouncement value) addAnnouncement,
  }) {
    return addAnnouncement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowInputSection value)? showInputSection,
    TResult? Function(GetAllAnnouncements value)? getAllAnnouncements,
    TResult? Function(AddAnnouncement value)? addAnnouncement,
  }) {
    return addAnnouncement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowInputSection value)? showInputSection,
    TResult Function(GetAllAnnouncements value)? getAllAnnouncements,
    TResult Function(AddAnnouncement value)? addAnnouncement,
    required TResult orElse(),
  }) {
    if (addAnnouncement != null) {
      return addAnnouncement(this);
    }
    return orElse();
  }
}

abstract class AddAnnouncement implements AnnouncementTabEvent {
  factory AddAnnouncement() = _$AddAnnouncementImpl;
}

/// @nodoc
mixin _$AnnouncementTabState {
  List<AnnouncementModel> get announcementList =>
      throw _privateConstructorUsedError;
  bool get showInitialMessageScreen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnouncementTabStateCopyWith<AnnouncementTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementTabStateCopyWith<$Res> {
  factory $AnnouncementTabStateCopyWith(AnnouncementTabState value,
          $Res Function(AnnouncementTabState) then) =
      _$AnnouncementTabStateCopyWithImpl<$Res, AnnouncementTabState>;
  @useResult
  $Res call(
      {List<AnnouncementModel> announcementList,
      bool showInitialMessageScreen});
}

/// @nodoc
class _$AnnouncementTabStateCopyWithImpl<$Res,
        $Val extends AnnouncementTabState>
    implements $AnnouncementTabStateCopyWith<$Res> {
  _$AnnouncementTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcementList = null,
    Object? showInitialMessageScreen = null,
  }) {
    return _then(_value.copyWith(
      announcementList: null == announcementList
          ? _value.announcementList
          : announcementList // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementModel>,
      showInitialMessageScreen: null == showInitialMessageScreen
          ? _value.showInitialMessageScreen
          : showInitialMessageScreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AnnouncementTabStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AnnouncementModel> announcementList,
      bool showInitialMessageScreen});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AnnouncementTabStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcementList = null,
    Object? showInitialMessageScreen = null,
  }) {
    return _then(_$InitialImpl(
      announcementList: null == announcementList
          ? _value._announcementList
          : announcementList // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementModel>,
      showInitialMessageScreen: null == showInitialMessageScreen
          ? _value.showInitialMessageScreen
          : showInitialMessageScreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required final List<AnnouncementModel> announcementList,
      required this.showInitialMessageScreen})
      : _announcementList = announcementList;

  final List<AnnouncementModel> _announcementList;
  @override
  List<AnnouncementModel> get announcementList {
    if (_announcementList is EqualUnmodifiableListView)
      return _announcementList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_announcementList);
  }

  @override
  final bool showInitialMessageScreen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnnouncementTabState(announcementList: $announcementList, showInitialMessageScreen: $showInitialMessageScreen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnnouncementTabState'))
      ..add(DiagnosticsProperty('announcementList', announcementList))
      ..add(DiagnosticsProperty(
          'showInitialMessageScreen', showInitialMessageScreen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._announcementList, _announcementList) &&
            (identical(
                    other.showInitialMessageScreen, showInitialMessageScreen) ||
                other.showInitialMessageScreen == showInitialMessageScreen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_announcementList),
      showInitialMessageScreen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AnnouncementTabState {
  const factory _Initial(
      {required final List<AnnouncementModel> announcementList,
      required final bool showInitialMessageScreen}) = _$InitialImpl;

  @override
  List<AnnouncementModel> get announcementList;
  @override
  bool get showInitialMessageScreen;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}