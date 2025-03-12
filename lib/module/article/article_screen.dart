import 'package:bettereats_mobile/core/widgets/FLTextView.dart';
import 'package:bettereats_mobile/module/article/article_controller.dart';
import 'package:bettereats_mobile/module/article/widget/article_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleScreen extends GetView<ArticleController> {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FLTextView(text: 'Articles', color: Colors.white, fontSize: 16),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.articles.isEmpty) {
            return const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.article_outlined, size: 80, color: Colors.grey),
                  SizedBox(height: 10),
                  Text(
                    "Belum ada artikel",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: controller.articles.length,
            itemBuilder: (context, index) {
              return ArticleItem(article: controller.articles[index]);
            },
          );
        }),
      ),
    );
  }
}
