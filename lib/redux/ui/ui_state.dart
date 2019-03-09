import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mudeo/constants.dart';
import 'package:mudeo/data/models/song_model.dart';

part 'ui_state.g.dart';

abstract class UIState implements Built<UIState, UIStateBuilder> {
  factory UIState() {
    return _$UIState._(
      selectedTabIndex: kTabExplore,
      song: SongEntity(),
    );
  }

  UIState._();

  int get selectedTabIndex;

  SongEntity get song;

  static Serializer<UIState> get serializer => _$uIStateSerializer;
}
