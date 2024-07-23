import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hello_depart/app/features/dashboard/controllers/evenements_controller.dart';
import 'package:hello_depart/app/features/dashboard/views/components/liste_evenements.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../constans/app_constants.dart';
import '../../../../shared_components/header_text.dart';

class EvenementsScreen extends GetView<EvenementsController> {
  const EvenementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: ScrollController(),
        child: _buildEvenementsContent(
          onPressedMenu: () => controller.openDrawer(),
          context: context
        )
    );
  }

  Widget _buildEvenementsContent({Function()? onPressedMenu, required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Column(
        children: [
          const SizedBox(height: kSpacing),
          Row(
            children: [
              Expanded(
                child: LinearPercentIndicator(
                  percent: 4 / 12,
                  progressColor: Colors.blueGrey,
                  backgroundColor: Colors.blueGrey[200],
                ),
              ),
            ],
          ),
          const SizedBox(height: kSpacing * 1),
          Row(
            children: [
              const HeaderText("Les tickets événements"),
              const Spacer(),
              const SizedBox(width: 10),
              /*ElevatedButton.icon(
                icon: const Icon(
                  EvaIcons.plus,
                  size: 16,
                ),
                onPressed: () {

                  //showModalBottomSheet(
                  //    backgroundColor: Colors.transparent,
                  //    context: context,
                  //    isScrollControlled: true,
                  //    builder: (context) {

                  //      return FormAddFacture();

                  //    }
                  //);

                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0,
                ),
                label: const Text("Nouveau"),
              ),*/
            ],
          ),
          const SizedBox(height: kSpacing),
          ListeEvenements(
            data: controller.fetchEvenements(),
            //onPressed: (),
          )
        ],
      ),
    );
  }

}
