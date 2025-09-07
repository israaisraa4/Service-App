import 'package:flutter/material.dart';
import 'package:task3_ui/helpers/constants.dart';
import 'package:task3_ui/helpers/roues.dart';
import 'package:task3_ui/widgets/house_widget.dart';

class HousesScreen extends StatelessWidget {
  const HousesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> houses =
        ModalRoute.of(context)?.settings.arguments as List<Map<String, String>>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Houses"),
        actions: [
          InkWell(
            onTap: () => Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.splash,
              (route) => false,
            ),
            child: const Icon(Icons.logout, color: AppConstants.primaryColor),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 3,
          shrinkWrap: true,
        padding: const EdgeInsets.all(12),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: List.generate(houses.length, (index) {
          final house = houses[index];
          return HouseWidget(
            house_name: house['name'] ?? 'Unnamed',
            house_manager_icon_path: house['icon'] ?? 'profile.png',
          );
        }),
      ),
    );
  }
}
