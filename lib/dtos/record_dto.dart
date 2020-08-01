

  import 'package:flutterapp/components/tag.dart';
import 'package:flutterapp/models/daily_model.dart';
import 'package:flutterapp/models/emotion_model.dart';

class RecordDto {
  int _score = 0;
  String _description;
  int _dailyId;
  String _updatedAt;
  String _createdAt;
  Daily _daily;
  List<Tag> _tags = [];
  List<Emotion> _emotions = [];

  int get score => _score;

  set score(int value) {
    _score = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  int get dailyId => _dailyId;

  set dailyId(int value) {
    _dailyId = value;
  }

  String get updatedAt => _updatedAt;

  set updatedAt(String value) {
    _updatedAt = value;
  }

  String get createdAt => _createdAt;

  set createdAt(String value) {
    _createdAt = value;
  }

  Daily get daily => _daily;

  set daily(Daily value) {
    _daily = value;
  }

  List<Tag> get tags => _tags;

  set tags(List<Tag> value) {
    _tags = value;
  }

  List<Emotion> get emotions => _emotions;

  set emotions(List<Emotion> value) {
    _emotions = value;
  }
}