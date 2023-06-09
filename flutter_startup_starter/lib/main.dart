import 'package:flutter/material.dart';
import 'package:flutter_startup_starter/view/screens/bottom_navbar.dart';
import 'package:flutter_startup_starter/view/screens/countries.dart';
import 'package:flutter_startup_starter/view/screens/favourite_page.dart';
import 'package:flutter_startup_starter/view/screens/forgotten_password.dart';
import 'package:flutter_startup_starter/view/screens/homepage.dart';
import 'package:flutter_startup_starter/view/screens/investor_details.dart';
import 'package:flutter_startup_starter/view/screens/login_screen.dart';
import 'package:flutter_startup_starter/view/screens/onboardingScreen.dart';
import 'package:flutter_startup_starter/view/screens/option_page.dart';
import 'package:flutter_startup_starter/view/screens/option_screens/user_profile.dart';
import 'package:flutter_startup_starter/view/screens/otp.dart';
import 'package:flutter_startup_starter/view/screens/password.dart';
import 'package:flutter_startup_starter/view/screens/progress_page.dart';
import 'package:flutter_startup_starter/view/screens/projects_page.dart';
import 'package:flutter_startup_starter/view/screens/register.dart';
import 'package:flutter_startup_starter/view/screens/register_investor.dart';
import 'package:flutter_startup_starter/view/screens/startup_details.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          //secondary: Colors.blue,
        ),
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
     // home: OnboardingScreen(),
      //home: LoginScreen(),
      //home: SplashScreen(),
      //home: ForgottenPasswordScreen(),
      //home: OTPScreen(),
      //home: RegisterScreen(),
      //home: CountriesScreen(),
      //home: RegisterInvestorScreen(),
      //home: InvestorDetailsScreen(),
      //home: StartupDetailsScreen(),
      //home: PasswordScreen(),
      //home: HomePage(),
      //home: ProgressPage(),
      //home: BottomNavBar(),
      //home: FavouritePage(),
      //home: ProjectsPage(),
      //home: OptionPage(),
      home: UserProfile(),
    );
  }
}


