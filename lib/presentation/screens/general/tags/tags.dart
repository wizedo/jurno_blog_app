part of 'tags_imports.dart';

@RoutePage()
class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {

  late TagsViewModel tagsViewModel;

  @override
  void initState() {
    /*tagsViewModel = TagsViewModel(repository: context.read<Repository>());:
    Initializes tagsViewModel with an instance of TagsViewModel,
    passing a Repository instance read from the context.
    tagsViewModel.fetchAllTags();:
    Calls the fetchAllTags method to fetch all tags from the repository.
     */
    tagsViewModel = TagsViewModel(repository: context.read<Repository>());
    tagsViewModel.fetchAllTags();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: "Tags".text.size(16).make().centered(),
          automaticallyImplyLeading: false,
          actions: [
            const Icon(FeatherIcons.plus)
          ],
        ),
        /*BlocBuilder: A Flutter widget from the flutter_bloc package
         that rebuilds parts of the UI in response to state changes in a Bloc.*/
        // ********
        /*
        * VelocityBloc<TagsModel>: The type of Bloc that manages the state.
        * VelocityBloc is a generic class that handles business logic and state management.
        * VelocityState<TagsModel>: The type of state that the Bloc can emit.
        * VelocityState is a generic class that represents different states of the Bloc.
        * */
        // *****

        body: BlocBuilder<VelocityBloc<TagsModel>,VelocityState<TagsModel>>(
          bloc: tagsViewModel.tagsModelBloc,
            /*
        bloc: Specifies which Bloc to listen to.
        The BlocBuilder will use this Bloc to determine when to rebuild the widget.
         */
          builder: (context,state) {
            if(state is VelocityInitialState){
              return const Center(child: CircularProgressIndicator.adaptive(),);
            }else if(state is VelocityUpdateState){
              return ListView.separated(
                  itemCount: state.data.tags!.length,
                  separatorBuilder: (context,index)=> SizedBox(height: 20,),
                  itemBuilder: (context,index){
                    var tagsData=state.data.tags![index];
                    return Card(
                      child: ListTile(
                        leading: "${index+1}".text.size(16).make(),
                        title: tagsData.title!.text.size(16).make(),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(FeatherIcons.edit2,color: Colors.green)
                              ),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(FeatherIcons.trash,color: Colors.red,)
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }
            return const SizedBox();
          }
        )
    );
  }
}
