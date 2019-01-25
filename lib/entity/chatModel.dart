
class ChatModel {
  String name;
  String updateAt;
  String content;
  String imageUri;
  ChatModel({this.name, this.updateAt, this.content, this.imageUri});
}

List<ChatModel> messageData = [
  ChatModel(name: "Harry campaz", updateAt: "10:20 PM", content: "Gracias por la Info Bro", imageUri: "https://pbs.twimg.com/profile_images/763031383170244608/PLlQYtMa_bigger.jpg"),
  ChatModel(name: "Oscar Perez", updateAt: "1:00 AM", content: "Hola, Que mas ?", imageUri: "https://pbs.twimg.com/profile_images/893906531552571392/lg9V2Sf9_bigger.jpg"),
  ChatModel(name: "Lio Messi", updateAt: "3:20 PM", content: "No Voy al entrenamiento hoy", imageUri: "https://pbs.twimg.com/profile_images/955663505088278529/AwLYtMfh_bigger.jpg"),
  ChatModel(name: "Luis Cardenas", updateAt: "9:20 aM", content: "Todo Bien :)", imageUri: "https://pbs.twimg.com/profile_images/1062155885911425024/EMf90GZI_bigger.jpg"),
  ChatModel(name: "Rosa", updateAt: "11:20 PM", content: "Nos vemos mañana", imageUri: "https://pbs.twimg.com/profile_images/854430488777379840/zFdLhwbT_bigger.jpg"),

];