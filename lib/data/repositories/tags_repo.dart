
import 'package:velocity_x/velocity_x.dart';

import '../../presentation/screens/general/tags/tags_model.dart';
import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoint_urls.dart';

class TagsRepo extends ApiClient{
  TagsRepo();

  Future<TagsModel> getAllTags() async{
    try{
      final response = await getRequest(path: ApiEndpointUrls.tags);
      if(response.statusCode==200){
        //1st solution
        // final responseData =  tagsModelFromJson(jsonEncode(response.data));//this is only take map not stirng
        // //enccode - Converts object to a JSON string.
        // Vx.log(responseData);

        //2nd solution
        final responseData =  TagsModel.fromJson(response.data);//this is only take map not stirng
        return responseData;

      }else{
        TagsModel();
      }
    }on Exception catch(e){
        Vx.log(e);
        TagsModel();

    }
    return TagsModel();

  }

}