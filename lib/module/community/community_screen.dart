import 'package:bettereats_mobile/module/community/community_controller.dart';
import 'package:bettereats_mobile/module/community/model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunityScreen extends GetView<CommunityController> {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Community Page"), backgroundColor: Colors.green,),
      body: Obx(
            () => ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            final post = controller.posts[index];
            return Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text(post.content),
                onTap: () => _showReplies(context, post),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreatePostDialog(context),
        child: Icon(Icons.create),
      ),
    );
  }

  void _showCreatePostDialog(BuildContext context) {
    TextEditingController postController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Create Post"),
        content: TextField(controller: postController),
        actions: [
          TextButton(
            onPressed: () {
              controller.addPost(postController.text);
              Get.back();
            },
            child: Text("Post"),
          )
        ],
      ),
    );
  }

  void _showReplies(BuildContext context, Post post) {
    TextEditingController replyController = TextEditingController();
    showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        children: [
          Expanded(
            child: ListView(
              children: post.replies.map((reply) => ListTile(title: Text(reply))).toList(),
            ),
          ),
          TextField(
            controller: replyController,
            decoration: InputDecoration(
              hintText: "Write a reply...",
              suffixIcon: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  post.replies.add(replyController.text);
                  Get.back();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
