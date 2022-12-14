import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerTile extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  final double? radius;

  ShimmerTile.circular({
    Key? key,
    required this.width,
    required this.height,
    this.radius,
  })  : shapeBorder = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        super(key: key);

  ShimmerTile.radiusSquare({
    Key? key,
    required this.width,
    required this.height,
    this.radius,
  })  : shapeBorder = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 15),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[400]!,
        period: const Duration(seconds: 3),
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            shape: shapeBorder,
            color: Colors.grey[400],
          ),
        ),
      );
}
