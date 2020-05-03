import 'package:covstats/core/viewmodels/widgets/overall_info_widget.dart';
import 'package:covstats/features/shared/base_widget.dart';
import 'package:covstats/features/statistics/widgets/status_ratio_panel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatisticsPageBuildRatioPanel extends StatelessWidget {
  final BuildContext context;

  const StatisticsPageBuildRatioPanel({Key key, this.context})
      : super(key: key);

  @override
  Widget build(BuildContext context) => BaseWidget<OverallInfoWidget>(
        model: OverallInfoWidget(api: Provider.of(context)),
        onModelReady: (model) => model.getOverallInfo(),
        builder: (context, model, child) => model.busy
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: CircularProgressIndicator()),
              )
            : StatusRatioPanel(model: model.overallInfoModel),
      );
}
