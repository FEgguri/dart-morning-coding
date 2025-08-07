// 사용자: 김철수, 이메일: kim@example.com
// 프로젝트 수: 1
// 사용자: 박영희, 이메일: park@example.com
// 프로젝트 수: 2
// 사용자: 이민수, 이메일: lee@example.com
// 프로젝트 수: 1
// 사용자: 정수진, 이메일: jung@example.com
// 프로젝트 수: 2
// 사용자: 최동현, 이메일: choi@example.com
// 프로젝트 수: 1
// 사용자: 한지영, 이메일: han@example.com
// 프로젝트 수: 2

import 'dart:convert';
import 'dart:io';

void main() async {
  var file = File('lib/data.json');
  var Json = await file.readAsString();
  //String -> map
  Map<String, dynamic> map = jsonDecode(Json);
  User user = User.fromJson(map);

  print(user.toJson());
}

class User {
  String name;
  String email;
  List<String> projects;
  //int index;

  //초기화
  User({required this.name, required this.email, required this.projects});

//네임드생성자
  User.fromJson(Map<String, dynamic> map)
      : this(name: map['name'], email: map['email'], projects: map['projects']);

  Map<String, dynamic> toJson() {
    return {"name": name, "email": email, "projects": projects};
  }
}

class Project {
  int lenght;
  Project({required this.lenght});
}
