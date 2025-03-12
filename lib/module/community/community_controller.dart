import 'package:bettereats_mobile/module/community/model/post_model.dart';
import 'package:get/get.dart';

class CommunityController extends GetxController {
  var posts = <Post>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() async {
    await Future.delayed(Duration(seconds: 2));
    posts.assignAll([]);
    isLoading.value = false;
  }

  void addPost(String content) {
    posts.add(Post(content: content, replies: []));
  }
}