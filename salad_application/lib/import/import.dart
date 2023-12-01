import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_salad/model/m_about.dart';
import 'dart:developer' as developer;
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:flutter/services.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fruit_salad/model/m_languages.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:fruit_salad/model/m_salad_picture.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:search_page/search_page.dart';

import '../model/m_picturelist.dart';

part '../model/m_page3.dart';
part '../model/m_diminsion.dart';
part '../model/m_route_name.dart';

//view
part '../view/v_home.dart';
part '../view/v_packet.dart';
part '../view/v_about.dart';

part '../view/v_page1.dart';

part '../view/v_page2.dart';

part '../view/v_page3.dart';

part '../view/v_quantity.dart';
part '../view/v_testnetwork.dart';
// drawer
part '../Drawer/v_main_drawer.dart';
part '../Drawer/c_head_drawer.dart';
part '../Drawer/c_service_drawer.dart';
part '../Drawer/c_service_tab.dart';
part '../model/m_icons.dart';

//widget
part '../widget/w_packet_element.dart';

part '../widget/w_salad_button.dart';
//controll
part '../controller/c_error_massage.dart';
part '../controller/c_packet_list.dart';
part '../controller/c_saladimages.dart';

//thema
part '../theme/textstyle.dart';
part '../theme/dark_light_theme.dart';
part '../theme/theme_color.dart';
part '../theme/initlpage.dart';
part '../theme/theme_screen.dart';

double sailAll = 0;
final TextEditingController textController = TextEditingController();
