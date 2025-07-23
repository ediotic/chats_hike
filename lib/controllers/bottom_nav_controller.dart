import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);

    tabController.addListener(() {
      if (!tabController.indexIsChanging) {
        selectedIndex.value = tabController.index;
      }
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
