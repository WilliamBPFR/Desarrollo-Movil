import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();



  //Metodo para movernos a pagina de registro
  void goToLoginPage(){
    Get.back();
  }

  //Metodo para manejar la validación del formulario
  void register(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String phone = phoneController.text.trim();
    String name = nameController.text;
    String lastname = lastNameController.text;
    String repeatPassword = repeatPasswordController.text.trim();

    if(validForm(name,lastname,phone,email,repeatPassword,password)){
      print("Formulario Listo para hacer la peticion http");
    }
  }

  bool validForm(String name,String lastname,String phone,String email,String repeatPassword,String password){
    if(name.isEmpty){
      Get.snackbar("Formulario Inválido", "Debes ingresar su nombre");
      return false;
    }

    if(lastname.isEmpty){
      Get.snackbar("Formulario Inválido", "Debes ingresar su apellido");
      return false;
    }

    if(phone.isEmpty){
      Get.snackbar("Formulario Inválido", "Debes ingresar su teléfono");
      return false;
    }

    if(repeatPassword.isEmpty){
      Get.snackbar("Formulario Inválido", "Debes ingresar su contraseña de nuevo");
      return false;
    }
    
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

    if(repeatPassword != password){
      Get.snackbar("Formulario Inválido", "Las contraseñas no son iguales.");
      return false;
    }
    if(phone.length != 10){
      Get.snackbar("Formulario Inválido", "Ingrese un número de teléfono válido 10.");
      return false;
    }

    if(phone.isPhoneNumber){
      Get.snackbar("Formulario Inválido", "Ingrese un número de teléfono válido.");
      return false;
    }

    return true;
  }
}//fin de la clase