import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/screens/group_screen/group_screen.dart';
import 'package:pronounce_go/screens/profile_screen/profile_screen.dart';
import 'package:pronounce_go/screens/training_screen/training_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: theme.secondaryContainer,
          indicatorColor: theme.surface,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.book), label: "Training"),
            NavigationDestination(icon: Icon(Icons.group), label: "Group"),
            NavigationDestination(
                icon: Icon(Icons.person), label: "My progress"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Settings")
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(color: Colors.green),
    const TrainingScreen(),
    GroupScreen(),
    Container(color: Colors.blue),
    const ProfileScreen(),
  ];
}
