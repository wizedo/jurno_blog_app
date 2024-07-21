import 'package:auto_route/auto_route.dart';
import 'package:jurno_blog_app/presentation/routes/router_imports.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils{

  static Future<void> manipulateLogin(context) async{

  var token= await getToken();
  if(token!=null){
    print('going to general');
    AutoRouter.of(context).push(const GeneralRoute());
  }else{
    print('going to auth');
    AutoRouter.of(context).push(const AuthRoute());
  }

  }

  static Future<void> saveToken(String token) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  static Future<String?> getToken() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

}