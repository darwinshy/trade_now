import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:stacked/stacked.dart';

class HamburgarIcon extends ViewModelWidget<DashboardViewModel> {
  const HamburgarIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    double height = MediaQuery.of(context).size.height;

    return Positioned(
      top: height / 1.15,
      right: viewModel.isSideBarOpen ? 20 : -10,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.1),
            borderRadius:
                BorderRadius.circular(viewModel.isSideBarOpen ? 20 : 0)),
        child: IconButton(
          splashRadius: 20,
          onPressed: viewModel.toggleSideBarVisibility,
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
