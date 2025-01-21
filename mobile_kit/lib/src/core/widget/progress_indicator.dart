import 'package:flutter/material.dart';

class FullScreenProgressIndicator extends StatelessWidget {
  const FullScreenProgressIndicator({
    required this.isLoading,
    required this.child,
    super.key,
  });

  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          IgnorePointer(
            ignoring: false,
            child: Stack(
              children: [
                Container(
                  color: Colors.black.withOpacity(0.5),
                ),
                const Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            ),
          ),
      ],
    );
  }
}