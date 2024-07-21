part of 'onboard_imports.dart';

@RoutePage()
class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  //creating object
  OnBoardViewModel onBoardViewModel=OnBoardViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                Image.asset(
                  MyAssets.mainLogo,
                  color: MyColors.primaryColor,
                  height: 42.h,
                  width: 139.w,
                ),
                63.h.heightBox, //This would make the code consistent and leverage the benefits of VelocityX for a more concise and readable style.
                PageView(
                  controller: onBoardViewModel.pageController,
                  children: [
                    OnBoardFirst(),
                    OnBoardSecond(),
                    OnBoardThird()
                  ],
                ).expand(),
                63.heightBox,
                PrimaryButton(title: 'Get Started', onPressed: (){
                  AutoRouter.of(context).push(const AuthRoute());
                }),
                60.h.heightBox,
                SmoothPageIndicator(
                    controller: onBoardViewModel.pageController,  // PageController
                    count:  3,
                    effect:  WormEffect(
                      activeDotColor: MyColors.primaryColor,
                      dotHeight: 12.0,
                      dotWidth: 12.0
                    ),  // your preferred effect
                    onDotClicked: (index){
                    }
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Skip".text.size(16.sp).color(MyColors.primaryColor).fontWeight(FontWeight.w700).make(),
                    "Next".text.size(16.sp).color(MyColors.primaryColor).fontWeight(FontWeight.w700).make(),
                  ],
                ),
                20.h.heightBox,

              ],
            ),
          ),
        ),
      ),
    );
  }
}


