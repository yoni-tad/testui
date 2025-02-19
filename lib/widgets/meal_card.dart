import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MealCard extends StatelessWidget {
  final String title;
  final String imageAddress;

  const MealCard({super.key, required this.title, required this.imageAddress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 15.h
      ),
      child: Container(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageAddress,
                fit: BoxFit.cover,
                width: 90.w,
                height: 100.h,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 216.w,
                  child: Text(
                    title,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                      color: Color(0xff191919),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Fat',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp,
                              color: Color(0xff3A4750),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            '1.5g',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Color(0xff3A4750),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 29.w,
                      ),
                      Column(
                        children: [
                          Text(
                            'Protien',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp,
                              color: Color(0xff3A4750),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            '10.9g',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Color(0xff3A4750),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 29.w,
                      ),
                      Column(
                        children: [
                          Text(
                            'Carbs',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp,
                              color: Color(0xff3A4750),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            '13.5g',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: Color(0xff3A4750),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
