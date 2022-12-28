import 'package:flutter/material.dart';
import 'package:justanapp/app/app.size.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:stacked/stacked.dart';

class HamburgarIcon extends ViewModelWidget<DashboardViewModel> {
  const HamburgarIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Positioned(
      top: SizeConfig.screenHeight! / 1.15,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20)),
        child: IconButton(
          splashRadius: 20,
          onPressed: viewModel.updateSideBarStatus,
          icon: Icon(
              !viewModel.isSideBarOpen
                  ? Icons.arrow_forward_ios_rounded
                  : Icons.arrow_back_ios_rounded,
              color: Theme.of(context).primaryColor,
              size: 15),
        ),
      ),
    );
  }
}