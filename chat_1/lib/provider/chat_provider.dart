import 'package:chat_1/entities/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../helpers/request.dart';

class ChatProvider extends ChangeNotifier{
  //Crear un controlador para el ListView
  final scrollcontroller = ScrollController();
  final request = Request();
 List<Message> messageList = [
   Message(text: "Hola Mundo", fromWho: FromWho.me),
   Message(text: "Hola Tu Mundo", fromWho: FromWho.me),
 ];

 //Metodo para añadir mensajes a la lista
  Future<void> sendMessage(String text) async{
    if(text.isEmpty){
      return;
    }
    final message = Message(text: text, fromWho: FromWho.me);
    messageList.add(message);
    notifyListeners();

    if(text.endsWith("?")){
      getYourAnswer();
    }
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      moveScrollToBottom();
    });
  }

  //c=Crear un metodo que me permita saber si tengo un mensaje nuevo y decirle al scroll que se vaya a la parte fional de la pantalla
//Decirle que se mueva a la parte mas grande de la pantalla

  //Aplicarestafuncion
  void moveScrollToBottom(){
    scrollcontroller.animateTo(
        scrollcontroller.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut
    );
  }

  Future<void> getYourAnswer() async{
    final yourAnswer = await request.getAnswer();
    messageList.add(yourAnswer);
    notifyListeners();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      moveScrollToBottom();
    });
  }
}