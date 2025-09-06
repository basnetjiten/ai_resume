import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {

  const LoadingView({
    Key? key,
    this.message,
    this.progress = 0.3,
    this.showProgress = true,
    this.padding = const EdgeInsets.all(24.0),
    this.spacing = 16.0,
  }) : super(key: key);
  final String? message;
  final double progress;
  final bool showProgress;
  final EdgeInsets padding;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showProgress)
              CircularProgressIndicator(
                value: progress >= 0 ? progress : null,
                strokeWidth: 3.0,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor,
                ),
              ),
            if (message != null) ...[
              SizedBox(height: spacing),
              Text(
                message!,
                textAlign: TextAlign.center,
               // style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ],
        ),
      ),
    );
  }

  /// Creates a loading view that takes the full screen
  static Widget fullScreen({
    String? message,
    bool showProgress = true,
  }) {
    return Scaffold(
      body: LoadingView(
        message: message,
        showProgress: showProgress,
        padding: const EdgeInsets.all(32.0),
      ),
    );
  }

  /// Creates a loading view that fills the available space
  static Widget expanded({
    String? message,
    bool showProgress = true,
  }) {
    return const Center(
      child: LoadingView(
        message: 'Loading...',
        showProgress: true,
      ),
    );
  }
}
