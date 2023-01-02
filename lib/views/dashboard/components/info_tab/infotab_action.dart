import 'package:flutter/material.dart';
import 'package:justanapp/views/dashboard/components/info_tab/infotab_item.dart';
import 'package:justanapp/widget/button.dart';

class InfoActionTab extends StatelessWidget {
  const InfoActionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.4,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.grey)],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Market Order',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Shares', style: TextStyle(fontSize: 14)),
              SizedBox(
                width: width * 0.05,
                height: height * 0.05,
                child: TextField(
                  textAlign: TextAlign.end,
                  style: const TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: '0.00',
                  ),
                ),
              ),
            ],
          ),
          const InfoTabItem(title: 'Market Price', value: '9809 INR'),
          const InfoTabItem(title: 'Extras', value: '9809 INR'),
          const Divider(thickness: 1),
          const InfoTabItem(title: 'Estimated Cost', value: '9809 INR'),
          const SizedBox(height: 10),
          RoundedTextButton(
              text: 'Buy Shares', isLoading: false, press: () => {})
        ],
      ),
    );
  }
}
