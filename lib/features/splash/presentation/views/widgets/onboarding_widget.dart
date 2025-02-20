import 'package:flutter/material.dart';
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
  final List<OnboardingData> onboardingPages = [
    OnboardingData(
      title: "Life is brief, but the universe is vast",
      description:
      "At Tourista Adventures, we curate unique and immersive travel experiences to destinations around the globe.",
      imagePath: "assets/images/travel1.jpg",
    ),
    OnboardingData(
      title: "The world is waiting for you, go discover it",
      description:
      "Embark on an unforgettable journey by venturing outside of your comfort zone. The world is full of hidden gems just waiting to be discovered.",
      imagePath: "assets/images/travel2.png",
    ),
    OnboardingData(
      title: "People don’t take trips, trips take people",
      description:
      "To get the best of your adventure you just need to leave and go where you like. we are waiting for you.",
      imagePath: "assets/images/travel3.png",
    ),
  ];

  final List<String> buttonTexts = ["Get Started", "Next", "Next"];

  final PageController _controller = PageController();
  int _currentIndex = 0;
  bool _isButtonPressedSkip = false;
  bool _isButtonPressedNext = false;
  void _nextPage() {
    if (_currentIndex < onboardingPages.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      // GoRouter.of(context)
      //     .push(Routers.TabBarSignLogin.name);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
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
                                text: words.join(" ") + " ",
                                style: AppTextStyles.textStyleOnboarding,
                              ),
                              WidgetSpan(
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      bottom: -4,
                                      left: 0,
                                      right: 0,
                                      child: RepaintBoundary(
                                        child: CustomPaint(
                                          size: Size(lastWord.length * 10, 5),
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
                      SizedBox(height: 10),
                      Padding(
                        padding: AppPadding.spacePadding,
                        child: Text(
                          onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.descriptionStyleOnboarding,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: AppPadding.spaceButton,
                        child: CustomButton(
                            text: '${buttonTexts[_currentIndex]}',
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
            bottom: 80,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingPages.length,
                    (index) => Container(
                  margin: EdgeInsets.only(right: 5),
                  width: _currentIndex == index ? 40 : 10,
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _currentIndex == index
                        ? Color.fromRGBO(168, 80, 0, 1)
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
