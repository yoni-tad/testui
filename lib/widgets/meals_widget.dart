import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MealsWidget extends StatelessWidget {
  final String imageAddress;
  final String mealTitle;
  final bool isFirst;

  const MealsWidget({super.key, required this.imageAddress, required this.mealTitle, required this.isFirst});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 318.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          !isFirst ? Container(
            width: 320.w,
            height: 1.h,
            color: Color(0xff6969691A),
          ) : SizedBox(),
          SizedBox(
            height: 20.h,
          ),
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  imageAddress,
                  fit: BoxFit.cover,
                  height: 150.h,
                  width: 318.w,
                ),
              ),
              Positioned(
                right: 12,
                top: 14,
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      size: 11.5.w,
                      color: Color(0xffFF6079),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            mealTitle,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
              color: Color(0xff191919),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/calories.png',
                    fit: BoxFit.cover,
                    height: 10.94.h,
                    width: 8.68.w,
                  ),
                  SizedBox(
                    width: 3.8.w,
                  ),
                  Text(
                    '135 kcal',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      color: Color(0xff3A4750),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 9.5.w,
              ),
              Container(
                height: 8.h,
                width: 1.w,
                color: Color(0xff707070),
              ),
              SizedBox(
                width: 9.5.w,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/clock.png',
                    fit: BoxFit.cover,
                    height: 10.94.h,
                    width: 8.68.w,
                  ),
                  SizedBox(
                    width: 3.8.w,
                  ),
                  Text(
                    '30 min',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      color: Color(0xff3A4750),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
