import 'package:flutter/material.dart';
import 'package:ai_resume/localization/arb/l10n.dart';

class ErrorView extends StatelessWidget {

  const ErrorView({
    Key? key,
    required this.message,
    this.onRetry,
    this.icon = Icons.error_outline,
    this.iconSize = 48,
    this.spacing = 16.0,
  }) : super(key: key);
  final String message;
  final VoidCallback? onRetry;
  final IconData? icon;
  final double iconSize;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: iconSize,
              //color: Theme.of(context).errorColor,
            ),
            SizedBox(height: spacing),
            Text(
              message,
              textAlign: TextAlign.center,
             // style: Theme.of(context).textTheme.subtitle1,
            ),
            if (onRetry != null) ...[
              SizedBox(height: spacing),
              ElevatedButton.icon(
                icon: const Icon(Icons.refresh, size: 20),
                label: Text(localization.retry),
                onPressed: onRetry,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
