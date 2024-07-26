import 'package:ctp_mobile/api/response/notifications_response.dart';
import 'package:ctp_mobile/data/repository/bot_repository.dart';
import 'package:ctp_mobile/data/repository/notification_repository.dart';
import 'package:ctp_mobile/presentation/resources/assets.dart';
import 'package:ctp_mobile/presentation/resources/colors.dart';
import 'package:ctp_mobile/presentation/ui/auth/authentication_bloc.dart';
import 'package:ctp_mobile/presentation/ui/main/notification/block/notification_list_bloc.dart';
import 'package:ctp_mobile/presentation/ui/widget/app_button.dart';
import 'package:ctp_mobile/presentation/ui/widget/dialog.dart';
import 'package:ctp_mobile/presentation/ui/widget/no_data_widget.dart';
import 'package:ctp_mobile/presentation/ui/widget/progress_indicator.dart';
import 'package:ctp_mobile/util/date_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class NotificationListScreen extends StatefulWidget {
  const NotificationListScreen({Key? key}) : super(key: key);

  @override
  State createState() => _NotificationListScreenState();
}

class _NotificationListScreenState extends State<NotificationListScreen> {
  late final NotificationListBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = NotificationListBloc(
      Provider.of<BotRepositoryImpl>(context, listen: false),
      Provider.of<NotificationRepositoryImpl>(context, listen: false),
      Provider.of<AuthenticationBloc>(context, listen: false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => _bloc,
      child: BlocConsumer<NotificationListBloc, NotificationListState>(listener: (context, state) {
        state.authApiStatus.whenOrNull(failure: (String message, bool logout) async {
          if (logout) {
            await showAdaptiveAlertDialog(context, 'Error', message);
            // await _bloc.logoutAction();
          } else {
            final snackBar = SnackBar(
              content: Text(
                message,
              ),
            );
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          }
        });
      }, builder: (context, state) {
        return Scaffold(
          backgroundColor: ColorPalette.greyBackground,
          appBar: AppBar(
            centerTitle: false,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () => context.pop(),
            ),
            actions: _buildActions(),
            title: const Text(
              'Notifications',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            backgroundColor: ColorPalette.greyBackground,
          ),
          body: FullScreenProgressIndicator(
            isLoading: state.isLoading,
            child: _buildNotifications(),
          ),
        );
      }),
    );
  }

  Widget _buildNotifications() {
    return Builder(builder: (context) {
      return SingleChildScrollView(
        clipBehavior: Clip.none,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            _bloc.state.info.isEmpty
                ? const Center(child: NoDataWidget(title: 'You have no notifications yet'))
                : _buildNotificationList(),
          ],
        ),
      );
    });
  }

  List<Widget> _buildActions() {
    final isActive = _bloc.state.isStopActive;
    return [
      Center(
        child: Container(
          height: 32,
          padding: const EdgeInsets.only(right: 10),
          child: AppButton(
              isActive: isActive,
              title: 'Stop All',
              onPressed: isActive
                  ? () async {
                      final isOk = await showDialogWithCancel(
                          context: context,
                          title: 'Stop All Bots',
                          message: 'Are you sure you want to stop all bots?',
                          isDestructive: true);
                      if (isOk) {
                        _bloc.stopAllBotsAction();
                      }
                    }
                  : null),
        ),
      ),
    ];
  }

  Widget _buildNotificationList() {
    final info = _bloc.state.info;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: info.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          clipBehavior: Clip.hardEdge,
          color: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 9.0),
                  child: _buildIcon(info[index]),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              info[index].title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          Text(
                            info[index].creationTime.convertToAgo,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        info[index].text,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildIcon(NotificationInfo info) {
    const double containerSize = 30;
    final notRead = info.readAt == null;
    String imageName;
    switch (info.type) {
      case NotificationType.Informational:
        imageName = Assets.notificationInformationIcon;
      case NotificationType.Warning:
        imageName = Assets.notificationWarningIcon;
      case NotificationType.Error:
        imageName = Assets.notificationErrorIcon;
    }

    return Stack(
      children: [
        SvgPicture.asset(
          imageName,
          width: containerSize,
          height: containerSize,
        ),
        if (notRead) ...[
          SvgPicture.asset(
            Assets.notificationUnreadPointIcon,
            width: 5,
            height: 5,
          ),
        ],
      ],
    );
  }
}
