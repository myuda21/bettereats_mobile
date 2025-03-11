import 'package:bettereats_mobile/module/community/model/post_model.dart';
import 'package:get/get.dart';

class CommunityController extends GetxController {
  var posts = <Post>[].obs;

  void addPost(String content) {
    posts.add(Post(content: content, replies: []));
  }
}