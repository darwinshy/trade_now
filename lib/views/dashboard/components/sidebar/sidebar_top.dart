import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:justanapp/widget/button.dart';
import 'package:stacked/stacked.dart';

class SideBarTop extends ViewModelWidget<DashboardViewModel> {
  const SideBarTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: 'TRADE ',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                color: Theme.of(context).primaryColor),
            children: const <TextSpan>[
              TextSpan(
                  text: 'STOCKS',
                  style: TextStyle(fontWeight: FontWeight.normal)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        RoundedTextButton(
            text: 'Quick Invest',
            press: () => viewModel.populateChartData(),
            isLoading: false),
      ],
    );
  }
}
