class ContactModel {
  String name;
  String about;
  String imageUri;
  String from;
  ContactModel({this.name, this.about, this.imageUri, this.from});
}

List<ContactModel> contactsData = [
  ContactModel(
      name: "Harry campaz",
      about: "Ocupado",
      from: "Mobile",
      imageUri:
          "https://pbs.twimg.com/profile_images/763031383170244608/PLlQYtMa_bigger.jpg"),
  ContactModel(
      name: "Oscar Perez",
      about: "En el gimnacio",
      from: "Mobile",
      imageUri:
          "https://pbs.twimg.com/profile_images/893906531552571392/lg9V2Sf9_bigger.jpg"),
  ContactModel(
      name: "Lio Messi",
      about: "La Rumba",
      from: "Web",
      imageUri:
          "https://pbs.twimg.com/profile_images/955663505088278529/AwLYtMfh_bigger.jpg"),
  ContactModel(
      name: "Luis Cardenas",
      about: "Todo cambiara 😀",
      from: "Mobile",
      imageUri:
          "https://pbs.twimg.com/profile_images/1062155885911425024/EMf90GZI_bigger.jpg"),
  ContactModel(
      name: "Rosa",
      about: "Telefono descargado",
      from: "Web",
      imageUri:
          "https://pbs.twimg.com/profile_images/854430488777379840/zFdLhwbT_bigger.jpg"),
];
