import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/util/string_extension.dart';
import 'package:mobile_kit/src/core/widget/dialog.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/control_status_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/model/control_model.dart';

class ControlWidget extends StatelessWidget {
  const ControlWidget({super.key, required this.model, required this.onPressed});

  final ControlModel model;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(fit: BoxFit.scaleDown, child: Text(model.name)),
              Text(model.status.name.capitalized, style: TextStyle(color: model.status.descriptionColor)),
            ],
          ),
        ),
        // const Spacer(),
        _buildStartPauseButton(),
      ],
    );
  }

  Widget _buildStartPauseButton() {
    final icon = SvgPicture.asset(model.status.assetName, package: assetsPackage);
    return Builder(
      builder: (context) {
        return Container(
          child: model.isActionsDisabled
              ? const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CupertinoActivityIndicator(color: ColorPalette.grayIcon, radius: 15),
                )
              : IconButton(
                  iconSize: 45.0,
                  icon: icon,
                  onPressed: () async {
                    if (model.status == ControlStatus.started) {
                      final isOk = await showDialogWithCancel(
                        context: context,
                        title: AppLocalizations.of(context)!.stopControlAlertTitle,
                        message: AppLocalizations.of(context)!.stopControlAlertMessage,
                        isDestructive: true,
                      );
                      if (isOk) {
                        onPressed();
                      }
                    } else {
                      onPressed();
                    }
                  },
                ),
        );
      },
    );
  }
}
