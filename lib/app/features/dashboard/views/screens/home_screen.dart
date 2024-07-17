import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../utils/helpers/app_helpers.dart';
import '../../../../constans/app_constants.dart';
import '../../../../shared_components/header_text.dart';
import '../../../../shared_components/task_progress.dart';
import '../../controllers/home_controller.dart';
import '../components/header_weekly_task.dart';
import '../components/liste_factures.dart';
import '../components/task_in_progress.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: ScrollController(),
        child: _buildTaskContent(
          onPressedMenu: () => controller.openDrawer(),
        )
    );
  }

  Widget _buildTaskContent({Function()? onPressedMenu}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Column(
        children: [
          const SizedBox(height: kSpacing),
          Row(
            children: [
              Expanded(
                child: HeaderText(
                  DateTime.now().formatdMMMMY(),
                ),
              ),
              const SizedBox(width: kSpacing / 2),
              SizedBox(
                width: 200,
                child: TaskProgress(data: controller.dataTask),
              ),
            ],
          ),
          const SizedBox(height: kSpacing),
          TaskInProgress(data: controller.taskInProgress),
          const SizedBox(height: kSpacing * 2),
          HeaderWeeklyTask(),
          const SizedBox(height: kSpacing),
          ListeFactures(
            data: controller.fetchTickets(),
            onPressed: controller.onPressedTask,
          ),
        ],
      ),
    );
  }

}
