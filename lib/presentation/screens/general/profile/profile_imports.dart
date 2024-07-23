import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jurno_blog_app/core/constants/my_assets.dart';
import 'package:jurno_blog_app/core/constants/my_colors.dart';
import 'package:jurno_blog_app/data/models/message_model.dart';
import 'package:jurno_blog_app/data/repositories/repository.dart';
import 'package:jurno_blog_app/main.dart';
import 'package:jurno_blog_app/presentation/common%20widgets/common_widgets_imports.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../utils/utils.dart';
import '../../../routes/router_imports.gr.dart';

part 'profile.dart';
part 'profile_view_model.dart';
