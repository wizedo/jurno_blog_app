part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  late LoginViewModel loginViewModel;

  @override
  void initState() {
    loginViewModel = LoginViewModel(repository: context.read<Repository>());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: FadedScaleAnimation(
          child: ListView(
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
                  child: Form(
                    key: loginViewModel.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        50.h.heightBox,
                        "Login".text.size(18.sp).color(MyColors.primaryColor).fontWeight(FontWeight.w700).makeCentered(),
                        48.h.heightBox,
                        "Email".text.make(),
                        8.h.heightBox,
                        VxTextField(
                          controller: loginViewModel.emailController,
                          validator: (email){
                            if(email!.isEmpty){
                              return "email is empty";
                            }else if(!email.isValidEmail){
                              return "Email is not valid";
                            }
                            return null;
                          },
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
                          controller: loginViewModel.passwordController,
                          validator: (password){
                            if(password!.isEmpty){
                              return "password is empty";
                            }else if(!password.isValidPassword){
                              return "password is not valid";
                            }
                            return null;
                          },
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
                        PrimaryButton(title: 'Login', onPressed: (){
                          if(loginViewModel.formKey.currentState!.validate()){
                            loginViewModel.login(context);

                          }
                        }),
                        20.h.heightBox,
                        "Don't have an account? "
                            .richText
                            .size(14)
                            .semiBold
                            .color(MyColors.primaryColor)
                            .withTextSpanChildren([
                          TextSpan(
                              text: "Sign Up",
                              recognizer: TapGestureRecognizer()..onTap=() => AutoRouter.of(context).push(RegisterRoute()) ,
                            style: TextStyle(
                              fontWeight: FontWeight.w700
                            )
                          ),
                        ]).makeCentered()

                      ]
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
