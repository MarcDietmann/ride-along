import 'package:flutter/material.dart';
import 'package:ride_along/_old/rounded_container.dart';

class FullWidthTextButton extends StatelessWidget {
  const FullWidthTextButton({
    Key? key,
    this.label,
    this.onTap,
  }) : super(key: key);
  final String? label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RoundedContainer(
          radius: 32,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Color(0xffB6EFDA),
                color: Theme.of(context).accentColor),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child:
                    Text(label!, style: Theme.of(context).textTheme.headline1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
