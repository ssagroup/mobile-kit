import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/util/date_extension.dart';
import 'package:mobile_kit/src/feature/home/domain/model/notification_model.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({
    super.key,
    required this.model,
  });

  final NotificationModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        model.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      model.createdDate.convertToAgo,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  model.value,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: ColorPalette.grayIcon,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}