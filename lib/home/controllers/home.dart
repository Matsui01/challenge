import 'package:matsui/home/controllers/profile_controller.dart';

class Home {
  Home._internal();

  static final Home _home = Home._internal();

  factory Home() {
    return _home;
  }
  void init(){
    profileController.init();
  }
  ProfileController profileController = ProfileController();
}
