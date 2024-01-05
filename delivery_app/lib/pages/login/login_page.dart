import 'package:delivery_app/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //Crear Objetivo de tipo LoginController
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        child: _textDontHaveAccount(),
        height: 50,
      ),
      body: Stack(
        children: [
          _boxCover(context),
          SingleChildScrollView(
            child: Column(
              children: [
                //_ImageCover(),
                _imageAnimation(),
                _TextAppName(),
                _boxForm(context),
              ],
            ),
          )
        ],
      )
    );
  }

  //Metodo para cargar la imagen
  Widget _ImageCover(){
      return  SafeArea(
        child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 30,bottom: 10),
            child: Image.asset("assets/images/intec.png", height: 140,)),
      );
  }

//Metodo con un cover de background
  Widget _boxCover(BuildContext context){
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      color: Colors.red.withOpacity(0.60),
    );
  }

  //Metodo para la imagen animada
  Widget _imageAnimation(){
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30,bottom: 15),
        child: Lottie.asset("assets/json/login_animation.json",height: 250,width: 250));
  }

  //Metodo con el texto principal de la aplicación
  Widget _TextAppName(){
    return Text(
      textAlign: TextAlign.center,
      "Delivery App",
      style: TextStyle(
        fontSize: 28,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
    );
  }

//Formulario Login
Widget _boxForm(BuildContext context){
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.003,
        left: 50,
        right: 50
      ),
      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 60),
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            offset: Offset(0,0.75)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _textYourInfo(),
          SizedBox(
            height: 30,
          ),
          _textLogin(),
          _textPassword(),
          _buttonLogin(),
        ]
      ),
    );
}

//Campo de entrada de email
Widget _textLogin(){
    return TextField(
      controller: controller.emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Correo Electrónico",
        prefixIcon: Icon(Icons.email)
      ),
    );
}

//Campo de entrada de contraseña
  Widget _textPassword(){
    return TextField(
      controller: controller.passwordController,
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: "Contraseña",
          prefixIcon: Icon(Icons.lock)
      ),
    );
  }

  Widget _textYourInfo(){
    return Text("Ingresa tus Datos",textAlign: TextAlign.center,);
  }

  Widget _buttonLogin(){
    return Container(
      margin: EdgeInsets.only(top:50),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15)
          ),
          onPressed: controller.login,
          child: Text("LOGIN")),
    );
  }

  Widget _textDontHaveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("¿No tienes cuenta?"),
        SizedBox(width: 5),
        GestureDetector(
          onTap: (){
            return controller.goToRegisterPage();
          },
          child: Text("Registrate!!!!",
            style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        )
      ],
    );
  }
}
