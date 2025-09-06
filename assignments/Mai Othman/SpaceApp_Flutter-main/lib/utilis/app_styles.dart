import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static final TextStyle bold24White = GoogleFonts.spaceGrotesk(color: Color(AppColors.white,), fontWeight: FontWeight.w700, fontSize: 24);
  static final TextStyle bold20White = GoogleFonts.spaceGrotesk(color: Color(AppColors.white,), fontWeight: FontWeight.w700, fontSize: 20);
  static final TextStyle reg16White = GoogleFonts.spaceGrotesk(color: Color(AppColors.white,), fontWeight: FontWeight.w300, fontSize: 16);
  static final TextStyle bold16White = GoogleFonts.spaceGrotesk(color: Color(AppColors.white,), fontWeight: FontWeight.w700, fontSize: 16);
  static final TextStyle Bold48White = GoogleFonts.spaceGrotesk(color: Color(AppColors.white,), fontWeight: FontWeight.w900, fontSize: 48);
  static final RoundedRectangleBorder floatingBtnStyle =  RoundedRectangleBorder(borderRadius: BorderRadius.circular(50));

}