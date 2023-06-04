import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/app/utils/strings.dart';

class WidgetImage extends StatelessWidget {
  final int? id;
  final double? height;
  final double? width;

  const WidgetImage({
    Key? key,
    required this.id,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return id != null
        ? CachedNetworkImage(
            imageUrl:
                '$baseUrlImg$id.png',
            height: height,
            width: width,
            errorWidget: (context, url, error) => Container(
              color: Colors.transparent,
            ),
            placeholder: (context, url) => Container(
              color: Colors.transparent,
            ),
          )
        : SizedBox();
  }
}
