part of 'splash_imports.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    moveToOnBoard();
    super.initState();
  }


  moveToOnBoard() {
    Future.delayed(const Duration(milliseconds: 1500),(){
      Utils.manipulateLogin(context);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
          child:
          FadedScaleAnimation(
            scaleDuration: const Duration(seconds: 1),
            child: Image.asset(
              MyAssets.mainLogo,
              height: 42.h,
              width: 139.w,
            ),
          ),
      ),
    );
  }
}
