
import 'package:bettereats_mobile/module/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: Navigator.of(context).canPop(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("title"),
          ),
        )
      )
    );
  }
}