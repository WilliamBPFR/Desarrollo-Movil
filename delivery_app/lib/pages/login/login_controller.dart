import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //Metodo para movernos a pagina de registro
  void goToRegisterPage(){
    Get.toNamed('register');
  }

  //Metodo para manejar la validación del formulario
  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if(validForm(email,password)){
      print("Formulario Listo para hacer la peticion http");
    }
  }

  bool validForm(String email, String password){
    if(!GetUtils.isEmail(email)){
      Get.snackbar("Formulario Inválido", "Debes ingresar un email válido.");
      return false;
    }

    if(email.isEmpty){
      Get.snackbar("Formulario Inválido", "Debes ingresar un email.");
      return false;
    }

    if(password.isEmpty){
      Get.snackbar("Formulario Inválido", "Debes ingresar una contraseña.");
      return false;
    }

    return true;
  }
}//fin de la clase