import '../../../data/onboarding_data.dart';

class ListData {
  List<OnboardingData> getOnboardingPages() {
    return [
      OnboardingData(
        title: "Life is brief, but the universe is vast.",
        description:
        "At Tourista Adventures, we curate unique and immersive travel experiences to destinations around the globe.",
        imagePath: "assets/images/travel1.jpg",
      ),
      OnboardingData(
        title: "The world is waiting for you, go discover it.",
        description:
        "Embark on an unforgettable journey by venturing outside of your comfort zone. The world is full of hidden gems just waiting to be discovered.",
        imagePath: "assets/images/travel2.png",
      ),
      OnboardingData(
        title: "People don’t take trips, trips take people.",
        description:
        "To get the best of your adventure you just need to leave and go where you like. we are waiting for you.",
        imagePath: "assets/images/travel3.png",
      ),
    ];
  }
}