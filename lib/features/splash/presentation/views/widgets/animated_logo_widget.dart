import 'dart:async';

import 'package:flutter/material.dart';

/// Type of the Images
enum ImgType { assetImage, networkImage }

class AnimatedSplash extends StatefulWidget {
  final int seconds;
  final Widget nextScreen;
  final ImgType imgType;
  final String image;
  final EdgeInsetsGeometry padding;
  final bool hasIndicator;
  final AlignmentGeometry indicatorAlignment;
  final Color indicatorColor;
  final double indicatorHeight;
  final Color backgroundColor;
  const AnimatedSplash(
      {super.key,
      required this.backgroundColor,
      required this.seconds,
      required this.nextScreen,
      required this.imgType,
      required this.image,
      this.padding = const EdgeInsets.all(20),
      required this.hasIndicator,
      this.indicatorAlignment = Alignment.bottomCenter,
      this.indicatorColor = Colors.blueAccent,
      this.indicatorHeight = 30});

  @override
  State<AnimatedSplash> createState() => _EasySplashState();
}

class _EasySplashState extends State<AnimatedSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: widget.seconds),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => widget.nextScreen)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              padding: widget.padding,
              child: Align(
                alignment: Alignment.center,
                child: (widget.imgType == ImgType.assetImage)

                    /// Checking type of the Image and show the appropriate widget
                    ? Image(image: AssetImage(widget.image))
                    : Image(image: NetworkImage(widget.image)),
              ),
            ),
            if (widget.hasIndicator) ...[
              Align(
                alignment: widget.indicatorAlignment,
                child: LinearProgressIndicator(
                  color: widget.indicatorColor,
                  minHeight: widget.indicatorHeight,
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
