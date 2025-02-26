import 'package:bettereats_mobile/module/Home/widget/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/widgets/custom_appbar.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      body: NestedScrollView(
        controller: controller.scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverPersistentHeader(
              pinned: true,
              delegate: CustomSliverAppBarDelegate(),
            ),
          ];
        },
        body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: Icon(Icons.fastfood, color: Colors.green.shade700),
                title: Text("Menu Item ${index + 1}",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("Deskripsi menu ke-${index + 1}"),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  Get.snackbar("Menu Dipilih", "Kamu memilih menu ke-${index + 1}");
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return CustomSliverAppBar(opacity: controller.opacity);
      },
    );
  }

  @override
  double get maxExtent => 160.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(covariant CustomSliverAppBarDelegate oldDelegate) => true;
}

