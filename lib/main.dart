import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jurno_blog_app/core/constants/my_colors.dart';
import 'package:jurno_blog_app/core/themes/app_themes.dart';
import 'package:jurno_blog_app/data/repositories/auth_repo.dart';
import 'package:jurno_blog_app/data/repositories/repository.dart';
import 'package:jurno_blog_app/data/repositories/tags_repo.dart';
import 'package:jurno_blog_app/presentation/routes/router_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/my_strings.dart';

void main() {
  runApp(RepositoryProvider(
      create: (context) => Repository(
          tagsRepo: TagsRepo(),
          authRepo: AuthRepo()
      ),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(394, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          routerConfig: _appRouter.config(),
        );
      }
    );
  }
}

