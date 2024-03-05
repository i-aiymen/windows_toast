import 'package:flutter/material.dart';

class WindowsToast {
  static void show(
    String message,
    BuildContext context,
    double bottomHeight, {
    int duration = 2,
    EdgeInsetsGeometry textPadding =
        const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    Color? toastColor,
    TextStyle? textStyle,
  }) {
    toastColor ??= const Color(0xff75777A).withOpacity(0.8);
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: bottomHeight,
        child: Material(
          color: Colors.transparent,
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: toastColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: textPadding,
                child: Text(
                  message,
                  style: textStyle,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry);

    Future.delayed(Duration(seconds: duration)).then((_) {
      overlayEntry.remove();
    });
  }
}
