import 'package:bettereats_mobile/core/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final double opacity;
  const CustomSliverAppBar({super.key, required this.opacity});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        Positioned(
          left: 16.0,
          top: 40.0,
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(Icons.menu, color: Colors.white, size: 28.0),
          ),
        ),
        Positioned(
          right: 16.0,
          top: 40.0,
          child: Stack(
            children: [
              const Icon(Icons.notifications, color: Colors.white, size: 28.0),
              Positioned(
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20.0,
          left: 50.0,
          right: 50.0,
          child: AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(milliseconds: 50),
            child: const SearchBarWidgets(),
          ),
        ),
      ],
    );
  }
}

