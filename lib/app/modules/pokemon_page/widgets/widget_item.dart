import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/pokemon_detail.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class WidgetItem extends StatelessWidget {
  final int id;
  final String name;
  final List<Type> types;
  final Function() onTap;

  const WidgetItem({
    Key? key,
    required this.id,
    required this.name,
    required this.types,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: colorByType(types.first.type.name),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -30,
              right: -110,
              left: -30,
              top: -30,
              child: Hero(
                tag: 'ball_$id',
                child: Image.asset(
                  'assets/images/pokeball.png',
                  color: Colors.white24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          name.capitalizeFirst!,
                          softWrap: false,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: _buildType(),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Hero(
                      tag: 'image_$id',
                      child: WidgetImage(
                        id: id,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildType() {
    return types.map<Widget>((e) {
      return Container(
        margin: const EdgeInsets.only(bottom: 4),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          e.type.name,
          style: const TextStyle(color: Colors.white),
        ),
      );
    }).toList();
  }
}