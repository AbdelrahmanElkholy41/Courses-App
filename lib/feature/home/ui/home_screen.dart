import 'package:courses/core/helpers/spacing.dart';
import 'package:courses/feature/home/ui/widget/build_drawer.dart';
import 'package:courses/feature/home/ui/widget/feature_curese.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _CourseHomeScreenState();
}

class _CourseHomeScreenState extends State<HomeScreen> {
  int _currentReviewIndex = 0;
  int _selectedNavIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      drawer: build_drawer(context: context), // <CHANGE> Added drawer
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            feature_course(scaffoldKey: _scaffoldKey,),
            SizedBox(height: 24.h),
            _buildReviewsSection(),
            SizedBox(height: 32.h),
            _buildCategoriesSection(),
            SizedBox(height: 80.h),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF5C9A8A),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // <CHANGE> Added drawer widget


  Widget _buildReviewsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            'Reviews',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 200.h,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                _currentReviewIndex = index;
              });
            },
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: _buildReviewCard(),
              );
            },
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            6,
                (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              width: 8.w,
              height: 8.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,

                color: _currentReviewIndex == index
                    ? const Color(0xFF5C9A8A)
                    : Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReviewCard() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            spreadRadius: 2,
            blurRadius: 20,
            offset: const Offset(0, 8),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: Colors.grey.shade200,width: 1.5),


      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundImage: const AssetImage('assets/images/book.png'),
          ),
          Row(
            children: List.generate(
              5,
                  (index) => Icon(
                Icons.star,
                color: const Color(0xFF00C48C),
                size: 16.sp,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: Text(
              'I am very happy to use this course, helped me a lot both in my daily activities as well as practical, it has taught me to be punctual and always face my daily activities with great effort, and the schedule is very flexible',
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(width: 8.w),
          Text(
            'Darlene Robertson',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16.h),
          buildCategoryCard(
            title: 'Courses',
            color: const Color(0xFF5C8C7D),
            height: 200.h,
            icon: Icons.computer,
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: buildCategoryCard(
                  title: 'offers',
                  color: const Color(0xFFB4E4D5),
                  height: 150.h,
                  icon: Icons.local_offer,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: buildCategoryCard(
                  title: 'Events',
                  color: const Color(0xFFF9D56E),
                  height: 150.h,
                  icon: Icons.event,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// =======================
  /// CATEGORY CARD
  /// =======================
  Widget buildCategoryCard({
    required String title,
    required Color color,
    required double height,
    required IconData icon,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r), // تدوير خفيف
      child: ClipPath(
        clipper: VClipper(),
        child: Container(
          height: height,
          padding: EdgeInsets.all(16.w),
          color: color,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Opacity(
                  opacity: 0.3,
                  child: Icon(
                    icon,
                    size: 80.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  /// =======================
  /// CLIPPER
  /// =======================



  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedNavIndex,
      onTap: (index) {
        setState(() {
          _selectedNavIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF5C9A8A),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.edit_outlined),
          activeIcon: Icon(Icons.edit),
          label: 'Book',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          activeIcon: Icon(Icons.chat_bubble),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'More',
        ),
      ],
    );
  }
}

// class CategoryClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     final notchDepth = size.height * 0.22;
//     final notchWidth = size.width * 0.35;
//
//     path.moveTo(0, 0);
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height - notchDepth);
//
//     path.quadraticBezierTo(
//       size.width * 0.75,
//       size.height,
//       size.width / 2,
//       size.height,
//     );
//
//     path.quadraticBezierTo(
//       size.width * 0.25,
//       size.height,
//       0,
//       size.height - notchDepth,
//     );
//
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
class VClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.85);

    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height * 0.85);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
