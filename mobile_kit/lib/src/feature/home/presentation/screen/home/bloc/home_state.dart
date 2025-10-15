part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required UserRole? userRole,
    required ApiStatus apiStatus,
    required List<HomeItem> items,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
    isLoading: false,
    userRole: null,
    apiStatus: ApiStatusNone(),
    items: [],
  );
}

class HomeItem {
  HomeItem({required this.title, required this.routeName, required this.iconColor, required this.assetName,});

  final String routeName;
  final String Function(BuildContext) title;
  final Color iconColor;
  final String assetName;

  factory HomeItem.infra() => HomeItem(
    routeName: infrastructureRouteName,
    title: (c) => AppLocalizations.of(c)!.infrastructureTitle,
    iconColor: ColorPalette.grayIcon,
    assetName: Assets.infrastructureIcon,
  );

  factory HomeItem.control() => HomeItem(
    routeName: controlRouteName,
    title: (c) => AppLocalizations.of(c)!.controlTitle,
    iconColor: ColorPalette.grayIcon,
    assetName: Assets.controlIcon,
  );

  factory HomeItem.kpi() => HomeItem(
    routeName: kpisRouteName,
    title: (c) => AppLocalizations.of(c)!.kpisTitle,
    iconColor: ColorPalette.grayIcon,
    assetName: Assets.kpiIcon,
  );

  factory HomeItem.settings() => HomeItem(
    routeName: settingsRouteName,
    title: (c) => AppLocalizations.of(c)!.settingsTitle,
    iconColor: ColorPalette.grayIcon,
    assetName: Assets.settingsIcon,
  );
}