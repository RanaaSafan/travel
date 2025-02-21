import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_course/core/styles/app_size_box.dart';
import 'package:travel_course/features/splash/presentation/views/widgets/list_data.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/app_size.dart';
import '../../../../../core/styles/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../authentication/presentation/views/screens/sign_in_screen.dart';
import '../../../data/onboarding_data.dart';
import 'curved_line_painter.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key? key}) : super(key: key);

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  final ListData _listData = ListData();
  late List<OnboardingData> onboardingPages;

  final List<String> buttonTexts = ["Get Started", "Next", "Next"];

  final PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    onboardingPages = _listData.getOnboardingPages();
  }


  bool _isButtonPressedNext = false;
  void _nextPage() {
    if (_currentIndex < onboardingPages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SignInScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            itemCount: onboardingPages.length,
            itemBuilder: (context, index) {
              String title = onboardingPages[index].title;
              List<String> words = title.split(" ");
              String lastWord = words.removeLast();
              return Stack(
                children: [
                  Image.asset(
                    onboardingPages[index].imagePath,
                    height: AppSize.height,
                    width: AppSize.width,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: AppPadding.spacePadding,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "${words.join(" ")} ",
                                style: AppTextStyles.textStyleOnboarding,
                              ),
                              WidgetSpan(
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      bottom: -4.h,
                                      left: 0.w,
                                      right: 0.w,
                                      child: RepaintBoundary(
                                        child: CustomPaint(
                                          size: Size(lastWord.length * 10.sp, 5.sp),
                                          painter: CurvedLinePainter(),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      lastWord,
                                      style: AppTextStyles.textStyleOnboarding
                                          .copyWith(
                                        color: AppColors.colorButtonAndBackg,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      AppSizeBox.size10,
                      Padding(
                        padding: AppPadding.spacePadding,
                        child: Text(
                          onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.descriptionStyleOnboarding,
                        ),
                      ),
                      Padding(
                        padding: AppPadding.spaceButton,
                        child: CustomButton(
                            text: buttonTexts[_currentIndex],
                            onPressed: () {
                              setState(() {
                                _isButtonPressedNext = true;
                              });
                              _nextPage();
                            }),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 80.h,
            left: 0.w,
            right: 0.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingPages.length,
                (index) => Container(
                  margin: EdgeInsets.only(right: 5.w),
                  width: _currentIndex == index ? 25.w : 5.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: _currentIndex == index
                        ? const Color.fromRGBO(168, 80, 0, 1)
                        : Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
