part of 'profile_imports.dart';

class ProfileViewModel{
  final Repository repository;

  ProfileViewModel({required this.repository});


  logout(context) async{
      var logoutdata = await repository.authRepo.userLogout(context);
      if(logoutdata.message.isNotEmptyAndNotNull){
        Utils.clearAllSavedData();
        AutoRouter.of(context).push(const AuthRoute());
      }
  }

}