
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/user_model.dart';
import '../utils/app_routes.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  RxBool isLoading = false.obs;
  
  // for user login ------->

  
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
  
// for user sign up or creater new user ------>

  Future<void> createUser(String email, String password , String name, VoidCallback onSuccess ) async {
    isLoading.value = true;
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
        
      );
      initUser(email, name);
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
 
  // for log out------>

  Future<void> logout() async {
    await auth.signOut();
    Get.offAllNamed(AppRoutes.welcomeScreen);
  }

  // for creating model in db
  Future<void>initUser(String email , String name) async {
    var newUser = UserModel(
      email: email,
      name: name,
      id: auth.currentUser!.uid,
    );
    try{
      await db.collection("users").doc(auth.currentUser!.uid).set(newUser.toJson());
      Get.offAllNamed(AppRoutes.homeScreen);
      print("User saved to Firestore");
    } on FirebaseAuthException catch(e){
      print(e);
    }
  }
}
