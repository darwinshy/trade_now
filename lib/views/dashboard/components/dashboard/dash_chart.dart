import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWidget extends ViewModelWidget<DashboardViewModel> {
  const ChartWidget({this.isFullScreen = false, Key? key})
      : super(key: key, reactive: true);

  final bool isFullScreen;

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: isFullScreen ? width : width * 0.45,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isFullScreen
                  ? IconButton(
                      onPressed: viewModel.toggleFullScreen,
                      icon: const Icon(Icons.fullscreen_exit))
                  : IconButton(
                      onPressed: viewModel.toggleFullScreen,
                      icon: const Icon(Icons.fullscreen)),
            ],
          ),
          Container(
              padding: const EdgeInsets.all(20),
              width: isFullScreen ? width * 0.9 : width * 0.45,
              height: isFullScreen ? height * 0.9 : height * 0.4,
              child: SfCartesianChart(
                crosshairBehavior: CrosshairBehavior(
                  enable: true,
                  activationMode: ActivationMode.singleTap,
                  lineType: CrosshairLineType.horizontal,
                ),
                primaryXAxis: DateTimeAxis(
                    intervalType: DateTimeIntervalType.minutes,
                    dateFormat: DateFormat.Hm(),
                    majorGridLines: const MajorGridLines(width: 0.4),
                    interactiveTooltip: const InteractiveTooltip(enable: true)),
                primaryYAxis: NumericAxis(
                    axisLine: const AxisLine(width: 0),
                    interactiveTooltip: const InteractiveTooltip(enable: true),
                    majorTickLines: const MajorTickLines(width: 0.4)),
                trackballBehavior: TrackballBehavior(
                  builder: trackball,
                  enable: true,
                  activationMode: ActivationMode.singleTap,
                  tooltipAlignment: ChartAlignment.center,
                  tooltipDisplayMode: TrackballDisplayMode.floatAllPoints,
                  tooltipSettings: const InteractiveTooltip(
                      enable: false, canShowMarker: true),
                ),
                series: viewModel.getDefaultLineSeries(),
              )),
        ],
      ),
    );
  }

  Widget trackball(BuildContext context, TrackballDetails trackballDetails) {
    return Container(
      height: 50,
      width: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Center(
        child: Text(
          '${trackballDetails.point!.y} INR',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
