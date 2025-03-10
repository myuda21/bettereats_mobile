import 'package:bettereats_mobile/core/widgets/FLTextView.dart';
import 'package:bettereats_mobile/module/article/model/list_article_model.dart';
import 'package:flutter/material.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  const ArticleItem({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: article.imageUrl?.isNotEmpty == true
                  ? Image.network(
                article.imageUrl!,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              )
                  : Container(
                width: 80,
                height: 80,
                color: Colors.grey[300],
                child: const Icon(
                  Icons.camera_alt,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FLTextView(
                    text: article.title,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 4),
                  FLTextView(
                    text: article.description,
                    fontSize: 14,
                    color: Colors.grey,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  FLTextView(
                    text: article.date,
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
