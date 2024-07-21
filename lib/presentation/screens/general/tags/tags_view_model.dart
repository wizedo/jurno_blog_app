part of 'tags_imports.dart';

/*The ViewModel acts as a bridge between the view (UI) and the model.
 It holds and manages the state of the view, processes business logic,
 and updates the UI.
  Fetches data from the repository.
  Holds the UI state.
  Updates the UI when data changes.
 */


class TagsViewModel{
  final Repository repository;

  TagsViewModel({required this.repository});

  final VelocityBloc<TagsModel> tagsModelBloc = VelocityBloc<TagsModel>(TagsModel());


  fetchAllTags() async{
    var tagsData = await repository.tagsRepo.getAllTags();

    if(tagsData.status==1){
      tagsModelBloc.onUpdateData(tagsData);
    }
  }
}