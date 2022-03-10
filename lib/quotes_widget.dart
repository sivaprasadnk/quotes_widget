import 'dart:math';

import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:quotes_widget/src/quotes_list.dart';

/// A simple widget to showcase quote and their author surrounded by a neumorphic container
///
/// Generates a random quote from predefined list and shows in UI.
///
/// [height] and [width] values must not be null.
///
class QuotesWidget extends StatelessWidget {
  const QuotesWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  /// Height of the neumorphic container
  final double height;

  /// Width of the neumorphic container
  final double width;

  @override
  Widget build(BuildContext context) {
    int length = quotesList.length;

    /// to generate random number
    var r = Random().nextInt(length - 1);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: GlassContainer(
            height: height,
            width: width,
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.40),
                Colors.white.withOpacity(0.10)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderColor: Colors.cyanAccent,
            borderGradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.60),
                Colors.white.withOpacity(0.10),
                Colors.lightBlueAccent.withOpacity(0.05),
                Colors.lightBlueAccent.withOpacity(0.6)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.0, 0.39, 0.40, 1.0],
            ),
            blur: 10.0,
            borderWidth: 3,
            elevation: 5.0,
            isFrostedGlass: false,
            shadowColor: Colors.black.withOpacity(0.20),
            alignment: Alignment.center,
            frostedOpacity: 0.12,
            margin: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Text(
                    quotesList[r],
                    style: const TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontFamily: 'Vollkorn',
                        package: 'quotes_widget'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '\n- ${authorsList[r]}',
                      textAlign: TextAlign.end,
                      style: const TextStyle(fontSize: 18, color: Colors.white
                          // color: textColor,
                          ),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                const Spacer(),
                // const Spacer(),
              ],
            ),
          ),
        ),
        const Positioned.fill(
          left: 50,
          child: Align(
            alignment: Alignment.topLeft,
            child: Image(
              height: 50,
              image: AssetImage(
                "assets/images/quote.png",
                package: "quotes_widget",
              ),
            ),
          ),
        )
      ],
    );
  }
}
