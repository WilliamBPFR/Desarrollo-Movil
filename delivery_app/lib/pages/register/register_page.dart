import 'package:delivery_app/pages/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  RegisterController controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            _boxCover(context),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: controller.goToLoginPage,
                          child: Icon(Icons.arrow_back))
                    ],
                  ),
                  _fotoAvatar(context),
                  _boxRegister()
                ]
              ),
            )
          ]
        ),
      ),
    );
  }

  Widget _boxCover(BuildContext context){
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      color: Colors.red.withOpacity(0.60),
    );
  }
  
  Widget _boxRegister(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      margin: EdgeInsets.only(top: 20, left: 12,right: 12),
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
          Text("Informaciones de Registro",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center,),
          SizedBox(height: 10,),
          _textNombre(),
          SizedBox(height: 10,),
          _textApellido(),
          SizedBox(height: 10,),
          _textCorreo(),
          SizedBox(height: 10,),
          _textTelefono(),
          SizedBox(height: 10,),
          _textContrasena(),
          SizedBox(height: 10,),
          _textVerificarContrasena(),
          SizedBox(height: 10,),
          _buttonRegistro()
        ],
      ),
    );
  }

  Widget _fotoAvatar(BuildContext context){
    return GestureDetector(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        child: CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.6),
          radius: MediaQuery.of(context).size.width * 0.2,
          child: Icon(Icons.person, size: 100),
        ),
      ),
    );
  }

  Widget _textNombre(){
    return TextField(
      controller: controller.nameController,
      keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "Nombre",
              prefixIcon: Icon(Icons.person)
          ),
    );
  }

  Widget _buttonRegistro(){
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 12)
          ),
          onPressed: controller.register,
          child: Text("Registrase")),
    );
  }

  Widget _textCorreo(){
    return TextField(
      controller: controller.emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Correo Electrónico",
          prefixIcon: Icon(Icons.mail)
      ),
    );
  }

  Widget _textApellido(){
    return TextField(
      controller: controller.lastNameController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Apellido",
          prefixIcon: Icon(Icons.person)
      ),
    );
  }

  Widget _textTelefono(){
    return TextField(
      controller: controller.phoneController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Telefono",
          prefixIcon: Icon(Icons.phone)
      ),
    );
  }

  Widget _textContrasena(){
    return TextField(
      controller: controller.passwordController,
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Contraseña",
          prefixIcon: Icon(Icons.lock)
      ),
    );
  }

  Widget _textVerificarContrasena(){
    return TextField(
      controller: controller.repeatPasswordController,
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Verificar Contraseña",
          prefixIcon: Icon(Icons.lock)
      ),
    );
  }
}
