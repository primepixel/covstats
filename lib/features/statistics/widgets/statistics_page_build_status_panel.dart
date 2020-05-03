import 'package:covstats/core/viewmodels/widgets/overall_info_widget.dart';
import 'package:covstats/features/shared/base_widget.dart';
import 'package:covstats/features/statistics/widgets/status_panel_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatisticsPageBuildStatusPanels extends StatelessWidget {
  const StatisticsPageBuildStatusPanels({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) => BaseWidget<OverallInfoWidget>(
        model: OverallInfoWidget(api: Provider.of(context)),
        onModelReady: (model) => model.getOverallInfo(),
        builder: (context, model, child) => model.busy
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : statusPanelGrid(model.overallInfoModel),
      );
}
