part of 'add_posts_imports.dart';

@RoutePage()
class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {

  QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Add Post".text.white.make(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.check,color: Colors.white,))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          5.h.heightBox,
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.network('https://img.freepik.com/free-vector/landing-page-template-design-business-websides_52683-22971.jpg?w=826&t=st=1721228116~exp=1721228716~hmac=8e1cb67b729139a19ea6012369aa24a1c2db3b8218169947472718246cfaf373'),
              IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    FeatherIcons.camera,
                    color: MyColors.primaryColor,
                  )),
            ],
          ),
          20.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: 'Title',
          ),
          20.h.heightBox,
          const VxTextField(
            fillColor: Colors.transparent,
            borderColor: MyColors.primaryColor,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: 'Slug',
          ),
          20.h.heightBox,
          Container(
            height: 60.h,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Tags".text.make(),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          20.h.heightBox,
          Container(
            height: 60.h,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Categories".text.make(),
                const Icon(FeatherIcons.chevronRight)
              ],
            ),
          ),
          //basic editing the text toolbar for user to edit conveintelty like bold,inc size
          QuillToolbar.simple(
            configurations: QuillSimpleToolbarConfigurations(controller: _controller),
          ),
          SizedBox(
            height: 400.h,
            child: QuillEditor.basic(
              configurations: QuillEditorConfigurations(controller: _controller),
            ),
          )

        ],
      ),
    );
  }
}
