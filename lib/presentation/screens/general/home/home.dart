part of 'home_imports.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Image.asset(MyAssets.netflix).cornerRadius(20),
              20.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Latests Posts".text.size(16).make(),
                  "See All".text.size(16).make()
                ],
              ),
              10.h.heightBox,
              ListView.separated(
                shrinkWrap: true,
                  itemCount: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context,index)=> SizedBox(height: 20.h,),
                  itemBuilder:(context,index){
                  return Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          AutoRouter.of(context).push(HomeDetailsRoute());
                  },
                        child: Image.asset(
                            MyAssets.netflix,
                            height: 120,
                            width: 180,
                          fit: BoxFit.cover,
                        ).cornerRadius(20),
                      ),
                      10.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Netflix will charge money for password sharing"
                              .text
                              .size(16)
                              .maxLines(2)
                              .bold
                              .make(),
                          6.h.heightBox,
                          Row(
                            children: [
                              const Icon(FeatherIcons.clock),
                              "6 months ago"
                              .text
                              .size(12)
                              .make()
                            ],
                          ),
                          6.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              "60 views"
                                  .text
                                  .size(12)
                                  .make(),
                              const Icon(FeatherIcons.bookmark),

                            ],
                          ),
                        ],
                      ).expand()

                    ],
                  );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
