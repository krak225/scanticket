import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_boarder/app/ui/layouts/main/widgets/main_drawer.dart';
import '../../../controllers/main_controller.dart';
import 'widgets/bottom_menu_widget.dart';
import 'widgets/header2_widget.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.closeAppConfirm();
        return false;
      },
      child: Scaffold(
        body: Obx(
          () => Column(
            children: [
              //controller.index.value == 2 ? Container() : Header2Widget(title: controller.pageListTitle[controller.index.value],),
              Header2Widget(title: controller.pageListTitle[controller.index.value], openDrawer: () => Scaffold.of(context).openDrawer(),),

              Expanded(child: controller.pageList[controller.index.value]),
            ],
          ),
        ),
        bottomNavigationBar: BottomMenuWidget(),
        drawer: MainDrawer(),
      ),
    );
  }
}
