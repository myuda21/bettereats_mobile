import 'package:bettereats_mobile/module/article/article_controller.dart';
import 'package:bettereats_mobile/module/article/widget/article_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleScreen extends GetView<ArticleController> {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Articles')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Obx(
              () => ListView.builder(
            itemCount: controller.articles.length,
            itemBuilder: (context, index) {
              return ArticleItem(article: controller.articles[index]);
            },
          ),
        ),
      ),
    );
  }
}