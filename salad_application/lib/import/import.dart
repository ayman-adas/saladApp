import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
// import 'package:toast/toast.dart';

import 'package:path/path.dart' as p;
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_salad/firebase_options.dart';
import 'package:fruit_salad/model/m_about.dart';
import 'package:fruit_salad/model/m_login.dart';
import 'package:fruit_salad/model/m_svg.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:developer' as developer;
// import 'package:material_dialogs/material_dialogs.dart';
// import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fruit_salad/model/m_languages.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:fruit_salad/model/m_salad_picture.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:search_page/search_page.dart';

import '../model/m_picturelist.dart';
//model
part '../model/m_page3.dart';
part '../model/m_diminsion.dart';
part '../model/m_route_name.dart';
part '../model/m_icons.dart';
part '../controller/c_auth.dart';

//view
part '../view/v_home.dart';
part '../view/v_packet.dart';
part '../view/v_about.dart';

part '../view/v_page1.dart';

part '../view/v_page2.dart';

part '../view/v_page3.dart';
part '../view/v_assistance.dart';

part '../view/v_quantity.dart';
part '../view/v_testnetwork.dart';
part '../view/v_themechange.dart';
part '../view/v_language.dart';

part './../view/v_forget_password.dart';
part './../view/v_login.dart';
part '../view/v_sregister.dart';

// drawer
part '../Drawer/v_main_drawer.dart';
part '../Drawer/c_head_drawer.dart';
part '../Drawer/c_service_drawer.dart';
part '../Drawer/c_service_tab.dart';
part '../Drawer/w_signout.dart';

//widget
part '../widget/w_packet_element.dart';
part '../widget/w_theme_lanfuase_change.dart';
part '../widget/textField.dart';
part '../widget/w_bottom_sheet.dart';
part '../widget/auth/widget_check_account.dart';
part './../widget/auth/widget_image_user.dart';
part './../widget/auth/widget_bottom.dart';
part './../widget/auth/widgetName.dart';
part './../widget/auth/widget_pass.dart';
part './../widget/auth/widget_email.dart';
part '../widget/w_image_auth.dart';
part './../widget/w_progress.dart';
part './../widget/w_search.dart';
part './../widget/w_signout.dart';
part './../widget/w_snack_bar.dart';
part './../widget/w_toast.dart';
part './../widget/auth/widget_logo.dart';
part '../widget/w_salad_button.dart';
//controll
part '../controller/c_error_massage.dart';
part '../controller/c_packet_list.dart';
part '../controller/c_saladimages.dart';
part '../controller/c_theme_change.dart';
part './../controller/c_auth_image.dart';
part './../controller/c_security.dart';
part '../model/m_accoint_user.dart';

//thema
part '../theme/textstyle.dart';
part '../theme/dark_light_theme.dart';
part '../theme/theme_color.dart';
part '../theme/initlpage.dart';
part '../theme/theme_screen.dart';
part '../theme/test_ypur_phone.dart';
part '../theme/adaptivetheme.dart';
part '../theme/material.dart';
part '../theme/themeRestart.dart';
part './../theme/t_firebaces.dart';
part './../theme/wrapper.dart';
//

double sailAll = 0;
