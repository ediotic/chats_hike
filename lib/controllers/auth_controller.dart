import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_routes.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.snackbar("Login" , "Login Successfully");
      Get.offAllNamed(AppRoutes.homeScreen);
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        Get.snackbar("Login Failed", "No user found for that email.");
      } else if (e.code == "wrong-password") {
        Get.snackbar("Login Failed", "Wrong password.");
      } else {
        Get.snackbar("Login Failed", e.message ?? "Unknown error");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> createUser(String email, String password , VoidCallback onSuccess) async {
    isLoading.value = true;
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      onSuccess();
       Get.snackbar("account creation" , "account created");

    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        Get.snackbar("Signup Failed", "The password is too weak.");
      } else if (e.code == "email-already-in-use") {
        Get.snackbar("Signup Failed", "The email is already registered.");
      } else {
        Get.snackbar("Signup Failed", e.message ?? "Unknown error");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
