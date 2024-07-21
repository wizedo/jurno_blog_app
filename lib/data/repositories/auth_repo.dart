import 'package:velocity_x/velocity_x.dart';
import '../../presentation/screens/login/login_model.dart';
import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoint_urls.dart';

class AuthRepo extends ApiClient{
  AuthRepo();

  Future<LoginModel> userLogin(String email,String password, context) async{

    Map body={
      "email":email,
      "password":password
    };

    try{
      final response = await postRequest(path: ApiEndpointUrls.login, body: body);
      if(response.statusCode==200){
        //1st solution
        // final responseData =  tagsModelFromJson(jsonEncode(response.data));//this is only take map not stirng
        // //enccode - Converts object to a JSON string.
        // Vx.log(responseData);

        //2nd solution
        final responseData =  LoginModel.fromJson(response.data);//this is only take map not stirng
        return responseData;

      }else{
        LoginModel();
      }
    }on Exception catch(e){
      VxToast.show(context,msg: e.toString());
      LoginModel();

    }
    return LoginModel();

  }


}