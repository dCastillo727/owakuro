import 'package:owakuro/owakuro.dart';

//@ToString()
class User {
  String name;
  int age;
  bool isAwesome;

  User(this.name, this.age, this.isAwesome);

  @MethodModifier()
  String methodToModify() {
    return name;
  }
}
