import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/dash_vm.dart';
import 'package:justanapp/views/dashboard/components/sidebar/sidebar_item.dart';
import 'package:stacked/stacked.dart';

class SideBarActionsList extends StatelessWidget {
  const SideBarActionsList({
    Key? key,
    required this.title,
    required this.list,
  }) : super(key: key);

  final String title;
  final Widget list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 10,
              color: Theme.of(context).primaryColor.withOpacity(0.5)),
        ),
        const SizedBox(height: 10),
        list
      ],
    );
  }
}

class SideBarActionsListView extends ViewModelWidget<DashboardViewModel> {
  const SideBarActionsListView({Key? key, required this.list})
      : super(key: key);

  final List list;

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) => SideBarItem(
        id: list[index]['id'],
        text: list[index]['text'].toString(),
        icon: list[index]['icon'] as IconData,
        press: (id) => viewModel.updateSideBarItems(id),
        isSelected: viewModel.sideBarActiveId == list[index]['id'],
      ),
    );
  }
}
