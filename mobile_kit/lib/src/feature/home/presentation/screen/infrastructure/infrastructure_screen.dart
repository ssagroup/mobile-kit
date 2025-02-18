import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kit/src/core/l10n/app_localizations.dart';
import 'package:mobile_kit/src/core/router/router.dart';
import 'package:mobile_kit/src/core/widget/app_bar_widget.dart';
import 'package:mobile_kit/src/core/widget/card_item_widget.dart';
import 'package:mobile_kit/src/core/widget/card_widget.dart';
import 'package:mobile_kit/src/core/widget/no_data_widget.dart';
import 'package:mobile_kit/src/core/widget/progress_indicator.dart';
import 'package:mobile_kit/src/feature/home/domain/helper/infrastructure_status_enum.dart';
import 'package:mobile_kit/src/feature/home/domain/repository/infrastructure_repository.dart';
import 'package:mobile_kit/src/feature/home/domain/usecase/get_all_infrastructure_usecase.dart';
import 'package:mobile_kit/src/feature/home/presentation/screen/infrastructure/bloc/infrastructure_cubit.dart';

class InfrastructureScreen extends StatefulWidget {
  const InfrastructureScreen({Key? key}) : super(key: key);

  @override
  _InfrastructureScreenState createState() => _InfrastructureScreenState();
}

class _InfrastructureScreenState extends State<InfrastructureScreen> {
  late final InfrastructureCubit _bloc;

  @override
  void initState() {
    super.initState();
    final getAllInfrastructureUseCase = GetAllInfrastructureUseCase(GetIt.instance<InfrastructureRepository>());
    _bloc = InfrastructureCubit(
      getAllInfrastructureUseCase,
    )..initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text(
          AppLocalizations.of(context)!.infrastructureTitle,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: BlocConsumer<InfrastructureCubit, InfrastructureState>(
        listener: (context, state) {
          state.apiStatus.whenOrNull(failure: (String message) async {
            final snackBar = SnackBar(
              content: Text(
                message,
              ),
            );
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          });
        },
        bloc: _bloc,
        builder: (context, state) {
          return FullScreenProgressIndicator(
            isLoading: state.isLoading,
            child: RefreshIndicator(
              onRefresh: () => _bloc.refresh(),
              child: CustomScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                slivers: [
                  if (state.infrastructure.isEmpty) ...[
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 100,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: NoDataWidget(title: AppLocalizations.of(context)!.noDataTitle),
                    ),
                  ] else
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildItems(),
                      ),
                    )
                ],
              ),

            ),
          );
        },
      ),
    );
  }

  Widget _buildItems() {
    return Builder(
      builder: (context) {
        return CardWidget(
          items: _infrastructureItems,
          onTapCallback: (index) {
            context.goNamed(infrastructureDetailsRouteName, extra: _bloc.state.infrastructure[index]);
          },
        );
      }
    );
  }

  List<Widget> get _infrastructureItems {
    final length = _bloc.state.infrastructure.length;
    return List.generate(length, (index) {
      final item = _bloc.state.infrastructure[index];
      return CardItem(
        assetName: item.status.assetName,
        itemTitle: item.title,
        fontSize: 14,
      );
    });
  }
}
