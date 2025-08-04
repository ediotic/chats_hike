// ignore_for_file: sort_child_properties_last

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/image_picker_controller.dart';
import '../../controllers/profile_controller.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_global.dart';
import '../../utils/app_icons.dart';
import '../../utils/app_strings.dart';
import '../../widgets/button.dart';
import 'widgets/edit_profile_textfileds.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    final profileController = Get.find<ProfileController>();
    // final profileController = Get.put(ProfileController());
    final imagePickerController = Get.find<ImagePickerController>();
    final nameController = TextEditingController(
      text: profileController.currentUser.value.name,
    );
    final emailController = TextEditingController(
      text: profileController.currentUser.value.email,
    );
    final aboutController = TextEditingController(
      text: profileController.currentUser.value.about,
    );
    final phoneController = TextEditingController(
      text: profileController.currentUser.value.phoneNumber,
    );
    RxBool isEdit = false.obs;
    RxString imagePathGallery = "".obs;
    RxString imagePathcamera = "".obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.grey5656,
        centerTitle: false,
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          AppStrings.profile,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: mq.height * 0.60,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.grey5656,
                  borderRadius: BorderRadius.circular(30).copyWith(
                    topRight: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(
                                () => isEdit.value
                                    ? Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 80,
                                            backgroundColor: AppColors.grey1212,
                                            child: Icon(
                                              CupertinoIcons.photo,
                                              size: 25,
                                            ),
                                          ),
                                          Positioned(
                                            child: InkWell(
                                              onTap: () {
                                                Get.bottomSheet(
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: AppColors.grey5656,
                                                      borderRadius:
                                                          BorderRadius.vertical(
                                                            top:
                                                                Radius.circular(
                                                                  30,
                                                                ),
                                                          ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.symmetric(
                                                                vertical: 30,
                                                              ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              // gallery image picker
                                                              InkWell(
                                                                onTap: () async {
                                                                  // Get.back();
                                                                  imagePathGallery
                                                                          .value =
                                                                      await imagePickerController
                                                                          .pickImageFromGallery();
                                                                  print(
                                                                    "imaged picked" +
                                                                        imagePathGallery
                                                                            .value,
                                                                  );
                                                                  ;
                                                                },
                                                                child: Image.asset(
                                                                  AppIcons
                                                                      .gallery,
                                                                  width:
                                                                      mq.width *
                                                                      .20,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width:
                                                                    mq.width *
                                                                    0.05,
                                                              ),
                                                              // camera image picker
                                                              InkWell(
                                                                onTap: () async {
                                                                  imagePathcamera
                                                                          .value =
                                                                      await imagePickerController
                                                                          .pickImageFromCamera();
                                                                },
                                                                child: Image.asset(
                                                                  AppIcons
                                                                      .camera,
                                                                  width:
                                                                      mq.width *
                                                                      .20,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                              child:
                                                  (imagePathGallery
                                                          .value
                                                          .isEmpty &&
                                                      imagePathcamera
                                                          .value
                                                          .isEmpty)
                                                  ? Image.asset(
                                                      AppIcons.edit,
                                                      width: 35,
                                                    )
                                                  : Image.file(
                                                      File(
                                                        imagePathGallery
                                                                .value
                                                                .isNotEmpty
                                                            ? imagePathGallery
                                                                  .value
                                                            : imagePathcamera
                                                                  .value,
                                                      ),
                                                    ),
                                            ),
                                            bottom: 8,
                                            right: 6,
                                          ),
                                        ],
                                      )
                                    : CircleAvatar(
                                        radius: 80,
                                        backgroundColor: AppColors.grey1212,
                                        child: Icon(
                                          CupertinoIcons.photo,
                                          size: 25,
                                        ),
                                      ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          // name field
                          Obx(
                            () => EditProfileTextfield(
                              label: "Name",
                              icon: CupertinoIcons.person,
                              controller: nameController,
                              isEnabled: isEdit.value,
                            ),
                          ),

                          SizedBox(height: 20),
                          // email field
                          EditProfileTextfield(
                            label: "Email",
                            icon: CupertinoIcons.mail,
                            controller: emailController,
                            isEnabled: false,
                          ),

                          SizedBox(height: 20),
                          // about field
                          Obx(
                            () => EditProfileTextfield(
                              label: "About",
                              icon: CupertinoIcons.info,
                              controller: aboutController,
                              isEnabled: isEdit.value,
                            ),
                          ),

                          SizedBox(height: 20),

                          // phone field
                          Obx(
                            () => EditProfileTextfield(
                              label: "Phone",
                              icon: CupertinoIcons.phone,
                              controller: phoneController,
                              isEnabled: isEdit.value,
                            ),
                          ),

                          SizedBox(height: 20),

                          //button
                          Obx(
                            () => isEdit.value
                                ? AppButton(
                                    title: AppStrings.save,
                                    onTap: () {
                                      isEdit.value = false;
                                    },
                                    icon: Icons.save,
                                    backgroundColor: AppColors.bluePrimary,
                                    textColor: AppColors.grey1212,
                                    iconColor: AppColors.grey1212,
                                  )
                                : AppButton(
                                    title: AppStrings.edit,
                                    onTap: () {
                                      isEdit.value = true;
                                    },
                                    icon: CupertinoIcons.pencil_outline,
                                    backgroundColor: AppColors.bluePrimary,
                                    textColor: AppColors.grey1212,
                                    iconColor: AppColors.grey1212,
                                  ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
