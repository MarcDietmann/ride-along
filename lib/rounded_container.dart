
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*class RoundedContainer extends StatelessWidget {
  final bool noClip;
  final Color color;
  final Widget child;
  final double height;
  final double width;
  const RoundedContainer({
    Key? key,
    this.color,
    this.child,
    this.height,
    this.width,
    this.noClip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget container = Container(
      child: child,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: (noClip == true)
            ? const BorderRadius.all(
          const Radius.circular(16),
        )
            : null,
      ),
    );
    return (noClip == true)
        ? container
        : ClipRRect(
        borderRadius: const BorderRadius.all(
          const Radius.circular(16),
        ),
        child: container);
  }
}*/


class RoundedContainer extends StatelessWidget {
  const RoundedContainer({Key? key, required this.radius, required this.child}) : super(key: key);
  final double radius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(
            radius
        ),

        boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  spreadRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
      ),
      child: ClipRRect(
          borderRadius:  BorderRadius.circular(
            radius
          ),

          child: child),
    );
  }
}
