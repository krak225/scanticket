import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/register_otp_controller.dart';

class RegisterOtpPage extends GetView<RegisterOtpController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
            child: Center(
        child: Text('RegisterOtp'),
      ),
    );
  }
}
