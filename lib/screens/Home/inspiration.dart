import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wedding_application/screens/components/category_bar.dart';
import 'package:wedding_application/screens/components/custom_inspiration_app_bar.dart';
import 'package:wedding_application/screens/components/persistance_header.dart';

class Inspiration extends StatelessWidget {
  const Inspiration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: CustomScrollView(
        slivers: [
          ExplorePage(),
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistantHeader(
              child: Category_bar(
                categories: const ['Haldi', 'Mehndi', 'Pre-Wedding'],
              ),
            ),
          ),
          
        ],
      )),
    );
  }
}
