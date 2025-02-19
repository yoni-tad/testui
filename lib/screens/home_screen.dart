import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testui/screens/detail_screen.dart';
import 'package:testui/widgets/meals_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.all(28),
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 29),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // tabs
              SizedBox(
                width: 320.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Center(
                        child: Text(
                          'Meal',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: const Color(0xff6969691A).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Center(
                        child: Text(
                          'Workout',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // meal list
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                    },
                    child: const MealsWidget(
                      imageAddress: 'assets/images/img-1.png',
                      mealTitle: 'Green beans, tomatoes, eggs',
                      isFirst: true,
                    ),
                  ),
                  const MealsWidget(
                    imageAddress: 'assets/images/img-2.png',
                    mealTitle: 'Healthy balanced vegetarien food',
                    isFirst: false,
                  ),
                  const MealsWidget(
                    imageAddress: 'assets/images/img-3.png',
                    mealTitle: 'Ketogenic/paleo diet, fried eggs, salmon',
                    isFirst: false,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
