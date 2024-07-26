import 'package:ctp_mobile/data/datasource/notifications_local_datasource_impl.dart';
import 'package:ctp_mobile/data/repository/bot_repository.dart';
import 'package:ctp_mobile/data/repository/notification_repository.dart';
import 'package:ctp_mobile/data/repository_helper.dart';
import 'package:ctp_mobile/presentation/router/router.dart';
import 'package:ctp_mobile/presentation/ui/auth/authentication_bloc.dart';
import 'package:ctp_mobile/presentation/ui/widget/lifecycle_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.level = Level.debug;
  await Firebase.initializeApp();

  final path = (await getApplicationDocumentsDirectory()).path;
  final helper = await RepositoryHelper.generate(
    storagePath: '$path/cc-hive',
  );

  final authBloc = AuthenticationBloc(
    repositoryHelper: helper,
  );

  final router = AppRouter(authBloc);
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<AuthenticationBloc>(create: (_) => authBloc),
          Provider<BotRepositoryImpl>(create: (_) => helper.botRep),
          Provider<NotificationRepositoryImpl>(create: (_) => helper.notificationRep),
          Provider<NotificationsLocalDatasourceImpl>(create: (_) => helper.notificationsDatasource),
        ],
        child: LifeCycleManager(
          onStateChanged: (AppLifecycleState state) {
            if (state == AppLifecycleState.resumed) {
              authBloc.enterForeground();
            } else if (state == AppLifecycleState.paused) {
              authBloc.enterBackground();
            }
          },
          child: CTPMobileApp(
            router: router,
          ),
        ),
      )
  );
}

class CTPMobileApp extends StatelessWidget {
  const CTPMobileApp({required this.router, Key? key}) : super(key: key);

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.light,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      // darkTheme: appTheme,
      locale: const Locale('en'),
      supportedLocales: const [Locale('en')],
      theme: ThemeData(fontFamily: 'Manrope', useMaterial3: false),
    );
  }
}
