part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: FadedScaleAnimation(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  MyAssets.mainLogo,
                  height: 42.h,
                  width: 139.w,
                ).centered(),
                100.h.heightBox,
                Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(36),
                          topRight: Radius.circular(36)
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          50.h.heightBox,
                          "Sign Up".text.size(18.sp).color(MyColors.primaryColor).fontWeight(FontWeight.w700).makeCentered(),
                          48.h.heightBox,
                          "Email".text.make(),
                          8.h.heightBox,
                          VxTextField(
                            hint: 'vishnuisgay@gmail.com',
                            fillColor: Colors.transparent,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10,
                            prefixIcon: Icon(Icons.email),
                          ),
                          20.h.heightBox,
                          "Password".text.make(),
                          8.h.heightBox,
                          VxTextField(
                            isPassword: true,
                            obscureText: true,
                            fillColor: Colors.transparent,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10,
                            prefixIcon: Icon(Icons.lock),
                          ),
                          20.h.heightBox,
                          "Confirm Password".text.make(),
                          8.h.heightBox,
                          VxTextField(
                            isPassword: true,
                            obscureText: true,
                            fillColor: Colors.transparent,
                            borderColor: MyColors.primaryColor,
                            borderType: VxTextFieldBorderType.roundLine,
                            borderRadius: 10,
                            prefixIcon: Icon(Icons.lock),
                          ),
                          40.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: 240.w,
                                  child: CheckboxListTile(
                                      contentPadding: EdgeInsets.zero,
                                      value: false,
                                      controlAffinity: ListTileControlAffinity.leading,
                                      onChanged: (value){
            
                                      },
                                      title:'Remember me'.text.make())),
                              "Forgot Password".text.size(14).make()
                            ],
                          ),
                          40.h.heightBox,
                          PrimaryButton(title: 'Register', onPressed: (){
            
                          }),
                          20.h.heightBox,
                          "Don't have an account? "
                              .richText
                              .size(14)
                              .semiBold
                              .color(MyColors.primaryColor)
                              .withTextSpanChildren([
                            TextSpan(
                                text: "Login",
                                recognizer: TapGestureRecognizer()..onTap=() => AutoRouter.of(context).push(LoginRoute()) ,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700
                                )
                            ),
                          ]).makeCentered()
            
                        ]
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
