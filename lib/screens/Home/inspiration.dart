import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wedding_application/screens/components/category_bar.dart';
import 'package:wedding_application/screens/components/custom_inspiration_app_bar.dart';
import 'package:wedding_application/screens/components/explore_tile.dart';
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
          SliverStaggeredGrid.countBuilder(
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
              crossAxisCount: 3,
              staggeredTileBuilder: (int index) {
                int modedIndex=index %20;
                int cXCellCount = modedIndex == 11 ?2:1;

                double mXCellCount=1;

                if(modedIndex ==2 || modedIndex==2){
                  mXCellCount=2;
                }
                return StaggeredTile.count(cXCellCount, mXCellCount);
              },
              itemBuilder: (BuildContext  context, int  index) {
                return ExploreTil();
              },
              itemCount: 20)
        ],
      )),
    );
  }
}
