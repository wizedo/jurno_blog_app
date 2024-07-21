
part of 'common_widgets_imports.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.primaryColor,
            minimumSize: Size(MediaQuery.of(context).size.width,44.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11)
            )
        ),
        //.text.size i am use velocity to build ui
        child: title
            .text
            .size(16.sp)
            .color(Colors.white)
            .fontWeight(FontWeight.w700)
            .make()
    );
  }
}