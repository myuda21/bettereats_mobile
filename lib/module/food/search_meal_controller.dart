import 'package:bettereats_mobile/utils/app_images.dart';
import 'package:get/get.dart';

class SearchMealController extends GetxController {
  var foodList = <Food>[].obs;
  var favoriteList = <Food>[].obs;
  var selectedFilter = 'All'.obs;

  final List<String> filters = [
    'All',
    'Favorites',
    'Recently Added',
    'Newest Meals',
    'Most Popular'
  ];

  @override
  void onInit() {
    super.onInit();
    fetchFoodList();
  }

  void fetchFoodList() {
    var data = [
      Food(
        imageUrl: AppImages.bread,
        title: 'Whole-Wheat Quick Bread',
        categories: ['Breakfast', 'Snack'],
        calories: 145,
        protein: 5,
        fat: 5,
        carbs: 22,
        isFavorite: false,
      ),
      Food(
        imageUrl: AppImages.bread,
        title: 'Red Fruit Salad',
        categories: ['Breakfast', 'Snack'],
        calories: 48,
        protein: 1,
        fat: 0,
        carbs: 12,
        isFavorite: false,
      ),
      Food(
        imageUrl: AppImages.bread,
        title: 'Grilled Chicken',
        categories: ['Lunch', 'Dinner'],
        calories: 230,
        protein: 27,
        fat: 5,
        carbs: 0,
        isFavorite: false,
      ),
      Food(
        imageUrl: AppImages.bread,
        title: 'Avocado Toast',
        categories: ['Breakfast', 'Snack'],
        calories: 200,
        protein: 6,
        fat: 12,
        carbs: 18,
        isFavorite: false,
      ),
    ];

    foodList.assignAll(data);
  }

  void toggleFavorite(Food food) {
    food.isFavorite = !food.isFavorite;
    foodList.refresh();

    if (food.isFavorite) {
      favoriteList.add(food);
    } else {
      favoriteList.removeWhere((item) => item.title == food.title);
    }
  }

  List<Food> get filteredFoodList {
    if (selectedFilter.value == 'Favorites') {
      return favoriteList;
    }
    return foodList;
  }
}

class Food {
  final String imageUrl;
  final String title;
  final List<String> categories;
  final int calories;
  final int protein;
  final int fat;
  final int carbs;
  bool isFavorite;

  Food({
    required this.imageUrl,
    required this.title,
    required this.categories,
    required this.calories,
    required this.protein,
    required this.fat,
    required this.carbs,
    this.isFavorite = false,
  });
}
