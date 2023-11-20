import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter/services.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fruit_salad/model/m_languages.dart';
import 'package:fruit_salad/model/m_page1.dart';

import 'package:fruit_salad/model/m_salad_picture.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:regexpattern/regexpattern.dart';
import 'package:search_page/search_page.dart';
part '../model/m_page3.dart';

//view
part '../view/v_home.dart';
part '../view/v_packet.dart';

part '../view/v_page1.dart';

part '../view/v_page2.dart';

part '../view/v_page3.dart';

part '../view/v_quantity.dart';
part '../view/v_testnetwork.dart';

//widget
part '../widget/w_packet_element.dart';

part '../widget/w_salad_button.dart';
//controll
part '../controller/c_error_massage.dart';
part '../controller/c_packet_list.dart';
//thema
part '../theme/textstyle.dart';
part '../theme/dark_light_theme.dart';
part '../theme/theme_color.dart';
part '../theme/initlpage.dart';

double sailAll = 0;
final TextEditingController textController = TextEditingController();
