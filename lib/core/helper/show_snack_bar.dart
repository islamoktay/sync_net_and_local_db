import 'package:flutter/material.dart';

/// It is used to show users feedback for their actions
void customSnackBar({
  required String? content,
  required BuildContext context,
  Color? color,
}) {
  const blurRadius = 4.0;
  const opacity = 0.1;
  const maxLines = 6;

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 3),
      margin: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      backgroundColor: Colors.transparent,
      content: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: blurRadius,
              color: Colors.grey.withOpacity(opacity),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color ?? Colors.red,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    content ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    maxLines: maxLines,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
    ),
  );
}
