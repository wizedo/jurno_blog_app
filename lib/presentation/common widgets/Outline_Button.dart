part of 'common_widgets_imports.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({
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
            backgroundColor: Colors.transparent,
            minimumSize: Size(MediaQuery
                .of(context)
                .size
                .width, 44.h),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: MyColors.white),
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