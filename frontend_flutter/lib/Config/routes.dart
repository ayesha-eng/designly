import 'package:flutter/widgets.dart';
import 'package:frontend_flutter/Views/UI/Auth/login_screen.dart';
import 'package:frontend_flutter/Views/UI/Auth/sign_up_role.dart';
import 'package:frontend_flutter/Views/UI/Auth/signup_screen.dart';
import 'package:frontend_flutter/Views/UI/Competition/competition_add.dart';
import 'package:frontend_flutter/Views/UI/Competition/competition_submit.dart';
import 'package:frontend_flutter/Views/UI/Competition/competition_view.dart';
import 'package:frontend_flutter/Views/UI/Dashboard/dashboard.dart';
import 'package:frontend_flutter/Views/UI/Profile/buyer_profile.dart';
import 'package:frontend_flutter/Views/UI/Profile/buyer_profile_edit.dart';
import 'package:frontend_flutter/Views/UI/Profile/designer_profile.dart';
import 'package:frontend_flutter/Views/UI/Profile/designer_profile_edit.dart';
import 'package:frontend_flutter/Views/UI/Project/project_add.dart';
import 'package:frontend_flutter/Views/UI/Project/project_add_next.dart';
import 'package:frontend_flutter/Views/UI/Project/project_add_preview.dart';
import 'package:frontend_flutter/Views/UI/Project/project_view.dart';
import 'package:frontend_flutter/Views/Utils/side_drawer.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => LoginScreen(),
  "/signup/screen": (BuildContext context) => SignUpScreen(),
  "/signup/role": (BuildContext context) => SignUpRole(),
  "/dashboard/screen": (BuildContext context) => Dashboard(),
  "/profile/designer": (BuildContext context) => DesignerProfile(),
  "/profile/buyer": (BuildContext context) => BuyerProfile(),
  "/drawer/side": (BuildContext context) => SideDrawer(),
  "/competition/add": (BuildContext context) => CompetitionAdd(),
  "/competition/view": (BuildContext context) => CompetitionView(),
  "/competition/submit": (BuildContext context) => CompetitionSubmit(),
  "/project/add": (BuildContext context) => ProjectAdd(),
  "/project/add/next": (BuildContext context) => ProjectAddNext(),
  "/project/add/preview": (BuildContext context) => ProjectAddPreview(),
  "/project/view": (BuildContext context) => ProjectView(),
  "/buyer/profile/edit": (BuildContext context) => BuyerProfileEdit(),
  "/designer/profile/edit": (BuildContext context) => DesignerProfileEdit(),



};
