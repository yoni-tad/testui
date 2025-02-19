import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testui/widgets/meal_card.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/img-2.png',
                      fit: BoxFit.cover,
                      height: 290.h,
                    ),
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 31.w,
                          right: 27.w,
                          top: 13.36.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: 24.w,
                              height: 18.54.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  size: 11.w,
                                  color: const Color(0xffFF6079),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffFCFCFC),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 37.h,
                          left: 29.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Fat',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.sp,
                                        color: const Color(0xff3A4750),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '1.5g',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp,
                                        color: const Color(0xff3A4750),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 51.w,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Protien',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.sp,
                                        color: const Color(0xff3A4750),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '10.9g',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp,
                                        color: const Color(0xff3A4750),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 51.w,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Carbs',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.sp,
                                        color: const Color(0xff3A4750),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '13.5g',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp,
                                        color: const Color(0xff3A4750),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 218.w,
                              child: Text(
                                'Healthy balanced vegetarian food',
                                style: GoogleFonts.bebasNeue(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 22.sp,
                                  color: const Color(0xff191919),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            SizedBox(
                              width: 289.w,
                              child: Text(
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: const Color(0xFF3A4750),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Container(
                              width: 320.w,
                              height: 1.h,
                              color: const Color(0xff6969691A).withOpacity(0.1),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Text(
                              'Meal plan',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                                color: const Color(0xff191919),
                              ),
                            ),
                            SizedBox(
                              height: 13.h,
                            ),
                            Column(
                              children: [
                                const MealCard(
                                  title:
                                      'Tortilla wrap with falafel and fresh salad',
                                  imageAddress: 'assets/images/img-4.png',
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 15.h,
                                  ),
                                  child: Container(
                                    width: 320.w,
                                    height: 1.h,
                                    color: const Color(0xff6969691A).withOpacity(0.1),
                                  ),
                                ),
                                const MealCard(
                                  title: 'Healthy vegan salad of vegetables',
                                  imageAddress: 'assets/images/img-2.png',
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 15.h,
                                  ),
                                  child: Container(
                                    width: 320.w,
                                    height: 1.h,
                                    color: const Color(0xff6969691A).withOpacity(0.1),
                                  ),
                                ),
                                const MealCard(
                                  title:
                                      'Ketogenic/paleo diet, fried eggs, salmon',
                                  imageAddress: 'assets/images/img-1.png',
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 267.h,
              left: 27.w,
              right: 27.w,
              child: Container(
                width: 320.w,
                height: 47.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/calories-1.png',
                          fit: BoxFit.contain,
                          height: 17.34.h,
                          width: 17.78.w,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          '135 kcal',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                            color: const Color(0xff191919),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Container(
                      height: 12.h,
                      width: 1.w,
                      color: const Color(0xff707070),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/clock-1.png',
                          fit: BoxFit.contain,
                          height: 17.34.h,
                          width: 17.78.w,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          '5 min',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                            color: const Color(0xff191919),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
