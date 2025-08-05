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
    final imagePickerController = Get.find<ImagePickerController>();
    RxBool isEdit = false.obs;
    RxString imagePathGallery = "".obs;
    RxString imagePathcamera = "".obs;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.grey5656,
        centerTitle: false,
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          AppStrings.profile,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: AppColors.white,
          ),
        ),
      ),
      body: Obx(() {
        if (profileController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.blueSecondary),
          );
        }

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

        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.grey5656,
                    borderRadius: BorderRadius.circular(30).copyWith(
                      topRight: const Radius.circular(0),
                      topLeft: const Radius.circular(0),
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
                                            const CircleAvatar(
                                              radius: 80,
                                              backgroundColor:
                                                  AppColors.grey1212,
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
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            AppColors.grey5656,
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
                                                              children: [
                                                                InkWell(
                                                                  onTap: () async {
                                                                    imagePathGallery
                                                                            .value =
                                                                        await imagePickerController
                                                                            .pickImageFromGallery();
                                                                    Get.back();
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
                                                                InkWell(
                                                                  onTap: () async {
                                                                    imagePathcamera
                                                                            .value =
                                                                        await imagePickerController
                                                                            .pickImageFromCamera();
                                                                    Get.back();
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
                                                    : ClipOval(
                                                        child: Container(
                                                          width: 160,
                                                          height: 160,
                                                          decoration:
                                                              BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: AppColors
                                                                    .grey1212,
                                                              ),
                                                          child:
                                                              (imagePathGallery
                                                                      .value
                                                                      .isNotEmpty ||
                                                                  imagePathcamera
                                                                      .value
                                                                      .isNotEmpty)
                                                              ? Image.file(
                                                                  File(
                                                                    imagePathGallery
                                                                            .value
                                                                            .isNotEmpty
                                                                        ? imagePathGallery
                                                                              .value
                                                                        : imagePathcamera
                                                                              .value,
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                )
                                                              : null,
                                                        ),
                                                      ),
                                              ),
                                              bottom: 0,
                                              right: 0,
                                            ),
                                          ],
                                        )
                                      : const CircleAvatar(
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
                            const SizedBox(height: 20),
                            Obx(
                              () => EditProfileTextfield(
                                label: "Name",
                                icon: CupertinoIcons.person,
                                controller: nameController,
                                isEnabled: isEdit.value,
                              ),
                            ),
                            const SizedBox(height: 20),
                            EditProfileTextfield(
                              label: "Email",
                              icon: CupertinoIcons.mail,
                              controller: emailController,
                              isEnabled: false,
                            ),
                            const SizedBox(height: 20),
                            Obx(
                              () => EditProfileTextfield(
                                label: "About",
                                icon: CupertinoIcons.info,
                                controller: aboutController,
                                isEnabled: isEdit.value,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Obx(
                              () => EditProfileTextfield(
                                label: "Phone",
                                icon: CupertinoIcons.phone,
                                controller: phoneController,
                                isEnabled: isEdit.value,
                              ),
                            ),
                            const SizedBox(height: 20),
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
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
