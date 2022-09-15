class Signup {
  String? name;
  String? phoneNumber;

  Signup({this.name, this.phoneNumber});

  Signup.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phoneNumber = json['PhoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['PhoneNumber'] = this.phoneNumber;
    return data;
  }
}
