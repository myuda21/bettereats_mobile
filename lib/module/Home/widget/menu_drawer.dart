import 'package:bettereats_mobile/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Text(
              "Menu",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
          ListTile(
            leading: const Icon(LucideIcons.home),
            title: const Text("Dashboard"),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
            },
          ),
          ListTile(
            leading: const Icon(LucideIcons.calculator),
            title: const Text("Calculator"),
            onTap: () {
              Get.offAndToNamed(AppRoutes.CALCULATOR);
            },
          ),
          ListTile(
            leading: const Icon(LucideIcons.search),
            title: const Text("Search Meal"),
            onTap: () {
              Get.offAndToNamed(AppRoutes.SEARCH_MEAL);
            },
          ),
          ListTile(
            leading: const Icon(LucideIcons.utensils),
            title: const Text("Meal Planner"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(LucideIcons.users),
            title: const Text("Community"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(LucideIcons.newspaper),
            title: const Text("Article"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
