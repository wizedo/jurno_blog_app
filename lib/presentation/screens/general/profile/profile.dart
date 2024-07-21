part of 'profile_imports.dart';

@RoutePage()
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(FeatherIcons.logOut,color: Colors.white,).pOnly(right: 15))
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 500,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40)
              )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70.r,
                    backgroundImage: AssetImage(MyAssets.onboarding3),
                  ),
                  10.h.heightBox,
                  "Naresh".text.size(16).bold.white.xl3.make(),
                  10.h.heightBox,
                  "tnaresh564@gmail.com".text.size(16).white.make(),
                  20.h.heightBox,
                  "Naresh is a passionate android developer who is more passionate about tech and startup ideas"
                      .text
                      .size(16)
                      .center
                      .white
                      .make(),
                  10.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          children: [
                            "6".text.bold.xl3.white.make(),
                            "Posts".text.white.make(),

                          ],
                      ),
                      Column(
                        children: [
                          "0".text.bold.xl3.white.make(),
                          "Following".text.white.make(),

                        ],
                      ),
                      Column(
                        children: [
                          "0".text.bold.xl3.white.make(),
                          "Followers".text.white.make(),

                        ],
                      )
                    ],
                  )
                  ,
                ],
              ),
            ),
          ),
          20.h.heightBox,
         Padding(
           padding:  const EdgeInsets.symmetric(horizontal: 10),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              "My Posts".text.bold.xl3.bold.make(),
               GridView.builder(
                 itemCount: 4,
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       crossAxisSpacing: 10,
                     mainAxisSpacing: 13,
                     childAspectRatio: 0.8
                   ),
                   itemBuilder: (context,index){
                   return Column(
                     children: [
                       Image.asset(MyAssets.onboarding2).cornerRadius(40),
                       6.h.heightBox,
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           "60 views"
                               .text
                               .medium
                               .black
                               .make()
                               .expand(),
                           IconButton(onPressed: (){}, icon: Icon(FeatherIcons.moreVertical)),
                         ],
                       )
                     ],
                   );
                   })
             ],
           ),
         )

        ],
      ),
    );
  }
}
