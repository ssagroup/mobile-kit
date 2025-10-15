import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kit/mobile_kit.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/router/router.dart';
import 'package:mobile_kit/src/core/widget/app_bar_with_logo_widget.dart';
import 'package:mobile_kit/src/core/widget/card_item_widget.dart';
import 'package:mobile_kit/src/core/widget/card_widget.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_user_info_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/home/bloc/home_cubit.dart';

import '../../../domain/repository/settings_repository.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeCubit _bloc;

  @override
  void initState() {
    super.initState();

    final getUserInfoUseCase = GetUserInfoUseCase(GetIt.instance<SettingsRepository>());
    _bloc = HomeCubit(getUserInfoUseCase)..initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithLogoWidget(
        title: Text(AppLocalizations.of(context)!.homeTitle, style: TextStyle(color: Colors.black)),
      ),
      body: BlocConsumer<HomeCubit, HomeState>(
        bloc: _bloc,
        listener: (_, __) {},
        builder: (context, state) {
          return Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0), child: _buildListView());
        },
      ),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: _bloc.state.items.length,
      itemBuilder: (BuildContext context, int index) {
        final item =  _bloc.state.items[index];
        final cardItemWidget = Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CardItem(
            assetName: item.assetName,
            itemTitle: item.title(context),
            iconColor: item.iconColor,
            iconSize: 20,
          ),
        );
        return CardWidget(
          item: cardItemWidget,
          onTapCallback: () => context.goNamed(item.routeName),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }
}
