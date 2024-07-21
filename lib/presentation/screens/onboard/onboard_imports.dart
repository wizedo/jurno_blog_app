import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jurno_blog_app/core/constants/my_assets.dart';
import 'package:jurno_blog_app/data/data_sources/remote/api_endpoint_urls.dart';
import 'package:jurno_blog_app/data/repositories/tags_repo.dart';
import 'package:jurno_blog_app/main.dart';
import 'package:jurno_blog_app/presentation/common%20widgets/common_widgets_imports.dart';
import 'package:jurno_blog_app/presentation/screens/onboard/onboard_view_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:jurno_blog_app/core/constants/my_colors.dart';
import 'package:jurno_blog_app/presentation/screens/onboard/widgets/widgets_imports.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../data/data_sources/remote/api_client.dart';
import '../../routes/router_imports.gr.dart';

part 'onboard.dart';