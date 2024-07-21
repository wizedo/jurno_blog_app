part of 'categories_imports.dart';

@RoutePage()
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Categories".text.size(16).make().centered(),
        automaticallyImplyLeading: false,
        actions: [
          const Icon(FeatherIcons.plus)
        ],
      ),
      body: ListView.separated(
          itemCount: 15,
          separatorBuilder: (context,index)=> SizedBox(height: 20,),
          itemBuilder: (context,index){
          return Card(
          child: ListTile(
          leading: "${index+1}".text.size(16).make(),
            title: "Enter".text.size(16).make(),
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
          })
    );
  }
}
