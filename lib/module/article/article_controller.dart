import 'package:bettereats_mobile/module/article/model/list_article_model.dart';
import 'package:get/get.dart';

class ArticleController extends GetxController {
  var articles = <Article>[].obs;

  @override
  void onInit() {
    fetchArticles();
    super.onInit();
  }

  void fetchArticles() {
    articles.assignAll([
      Article(
        title: 'Pengertian BMI dan TDEE: Apa yang Perlu Anda Ketahui',
        description: 'Ketika membahas kesehatan dan kebugaran, dua istilah yang sering muncul adalah BMI (Body Mass Index) dan TDEE (Total Daily Energy Expenditure). Artikel ini akan membahas secara mendalam mengenai BMI dan TDEE.',
        date: 'January 6, 2025',
      ),
      Article(
        title: 'Pentingnya Pola Makan Sehat untuk Kesehatan Tubuh',
        description: 'Pola makan sehat adalah salah satu faktor utama yang dapat mendukung kesehatan tubuh secara keseluruhan. Berikut adalah beberapa alasan mengapa pola makan sehat itu sangat penting.',
        date: 'January 6, 2025',
      ),
    ]);
  }
}