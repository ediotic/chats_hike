import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../model/user_model.dart';
class ProfileController extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;

  Rx<UserModel> currentUser = UserModel().obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    getUserDetails();
    super.onInit();
  }

  Future<void> getUserDetails() async {
    try {
      final doc = await db.collection("users").doc(auth.currentUser!.uid).get();
      if (doc.exists) {
        currentUser.value = UserModel.fromJson(doc.data()!);
      }
    } catch (e) {
      print("Error fetching user details: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
