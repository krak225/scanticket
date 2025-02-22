import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../shared_components/header_text.dart';
import '../../controllers/dashboard_controller.dart';

class HeaderWeeklyTask extends StatelessWidget {
  HeaderWeeklyTask({Key? key}) : super(key: key);
  final DashboardController controller = Get.find();
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HeaderText("Mes tickets vendus"),
        const Spacer(),
        _buildArchive(),
        const SizedBox(width: 10),
        //_buildAddNewButton(),
      ],
    );
  }

  Widget _buildArchive() {
    return ElevatedButton(
      onPressed: () => controller.changeIndex(2),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.grey[850], backgroundColor: Colors.grey[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
      ),
      child: const Text("Voir plus"),
    );
  }
}
