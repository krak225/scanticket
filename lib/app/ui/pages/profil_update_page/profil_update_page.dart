import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../global_widgets/button_style1_widget.dart';
import '../../global_widgets/default_header_widget.dart';
import '../../layouts/main/widgets/main_layout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/profil_update_controller.dart';
import '../../theme/custom_input_decoration.dart';
import '../../theme/light_color.dart';

class ProfilUpdatePage extends GetView<ProfilUpdateController> {
  @override
  Widget build(BuildContext context) {
    return MainLayoutView(
        child: Column(
      children: [
        DefaultHeaderWidget(title: 'Profil'),
        Expanded(
            child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff111111).withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(0, 14))
                        ], borderRadius: BorderRadius.circular(50)),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/profil.png'),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            // height: 40,
                            // width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // border: Border.all(
                              //   width: 4,
                              //   color: Theme.of(context).scaffoldBackgroundColor,
                              // ),
                              color: LightColor.second,
                            ),
                            child: Image.asset('assets/images/photo.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                AutoSizeText("Informations de l'utilisateur",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: LightColor.primary)),
                SizedBox(height: 20),
                FormBuilder(
                  key: controller.formKey,

                  ///initialValue: controller.initValues,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(children: [
                    Row(
                      children: [
                        Expanded(
                          child: FadeInRight(
                            child: FormBuilderTextField(
                              name: 'prenom',
                              initialValue: 'Armel',
                              // validator: ValidatorState.email,
                              decoration: CustomInputDecoration.style1(
                                  labelText: 'Prénom'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: FadeInRight(
                            child: FormBuilderTextField(
                              name: 'nom',
                              initialValue: 'TISSI',
                              // validator: ValidatorState.email,
                              decoration: CustomInputDecoration.style1(
                                  labelText: 'Nom de famille'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.04),
                    FadeInRight(
                      child: FormBuilderTextField(
                        name: 'email',
                        initialValue: 'tkjarmel@gmail.com',
                        // validator: ValidatorState.email,
                        decoration:
                            CustomInputDecoration.style1(labelText: 'Email'),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.04),
                    Row(
                      children: [
                        Expanded(
                          child: FadeInRight(
                            child: FormBuilderTextField(
                              name: 'genre',
                              initialValue: 'Homme',
                              // validator: ValidatorState.email,
                              decoration: CustomInputDecoration.style1(
                                  labelText: 'Le genre'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: FadeInRight(
                            child: FormBuilderTextField(
                              name: 'tel',
                              initialValue: '+227',
                              // validator: ValidatorState.email,
                              decoration: CustomInputDecoration.style1(
                                  labelText: 'Phone'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      "Adresse",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                          color: LightColor.primary
                      ),
                      maxLines: 1,
                    ),

                    TextButton(
                      onPressed: () {},
                      child: AutoSizeText(
                        "Ajouter plus",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: LightColor.second,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.location_on_outlined, color: Colors.black, size: 32,),
                  title: Text('00 Niamey avenue suite 00'),
                  subtitle: Text('00 Niger avenue suite 00 Niamey '),
                ),
                Divider(
                  color: LightColor.lightGrey2,
                ),

                SizedBox(height: Get.height * 0.18),

                FadeInRight(
                  duration: Duration(milliseconds: 600),
                  child: ButtonStyle1Widget(
                    text: 'Sauvegarder',
                    color: LightColor.second,
                    onPressed: () => Get.back(),
                  ),
                ),
              ],
            ),
          ),
        ))
      ],
    ));
  }
}
