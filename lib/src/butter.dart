import 'package:buttercms_dart/src/files/pages.dart';
import 'package:buttercms_dart/src/files/content.dart';
import 'package:buttercms_dart/src/files/posts.dart';
import 'package:buttercms_dart/src/files/authors.dart';
import 'package:buttercms_dart/src/files/categories.dart';
import 'package:buttercms_dart/src/files/tags.dart';

class Butter {
  /// The API token for Butter user
  final String _apiKey;

  Pages page;
  Content content;
  Posts post;
  Authors author;
  Categories category;
  Tags tag;

  Butter(this._apiKey) {
    if (_apiKey == "") {
      print(
          "The API token passed to the constructor is blank. This will most likely result in requests failing.");
    }
    page = Pages(_apiKey);
    content = Content(_apiKey);
    post = Posts(_apiKey);
    author = Authors(_apiKey);
    category = Categories(_apiKey);
    tag = Tags(_apiKey);
  }
}
