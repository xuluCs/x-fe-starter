import 'package:fe_starter_project_templete/components/components.dart';
import 'package:fe_starter_project_templete/components/widgets/button_widget.dart';
import 'package:fe_starter_project_templete/components/widgets/dot_indicators.dart';
import 'package:fe_starter_project_templete/core/constants/constant_style.dart';
import 'package:fe_starter_project_templete/core/screen_util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'components/onboard_content.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final color = MyScreen().colorDisplay(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(
                  MyScreen().screenBreakPoint(desktop: 20, mobile: 10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: TextWidget(
                      textToDisplay: 'ID | EN',
                      textStyle: MyScreen().textStyleTitle(context),
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.go('/login'),
                    child: TextWidget(
                      textToDisplay: "Lewati",
                      textStyle: MyScreen().textStyleTitle(context).copyWith(
                            color: color.primary,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  )
                ],
              ),
            ),
            const Spacer(flex: 2),
            Expanded(
              flex: 14,
              child: PageView.builder(
                controller: _pageController,
                itemCount: demoData.length,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) => OnboardContent(
                  illustration: demoData[index]["illustration"],
                  title: demoData[index]["title"],
                  text: demoData[index]["text"],
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                demoData.length,
                (index) => DotIndicator(isActive: index == currentPage),
              ),
            ),
            const Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: ButtonWidget(
                onTap: () {
                  if (currentPage < demoData.length - 1) {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  } else {
                    context.go('/login');
                  }
                },
                text:
                    currentPage == demoData.length - 1 ? 'Get Started' : 'Next',
                textColor: Colors.white,
                color: color.primary,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

// Demo data for our Onboarding screen
List<Map<String, dynamic>> demoData = [
  {
    "illustration": "onboarding_1",
    "title": "Selamat Datang di RewindMe",
    "text":
        "RewindMe adalah tempat perlindungan digital Anda, menawarkan ruang untuk menghargai dan berbagi cerita serta momen yang mendefinisikan hidup Anda. Tangkap esensi dari pengalaman Anda dan hubungkan dengan orang-orang terkasih dengan cara yang belum pernah ada sebelumnya.",
  },
  {
    "illustration": "onboarding_2",
    "title": "Buat Kenangan yang Abadi",
    "text":
        "Dengan RewindMe, Anda bisa menyimpan dan merayakan tonggak-tonggak penting, besar atau kecil, yang membuat hidup istimewa. Bagikan kenangan Anda, wariskan kepada generasi berikutnya, dan biarkan warisan Anda hidup dengan indah dan bermakna.",
  },
  {
    "illustration": "onboarding_3",
    "title": "Merangkul Momen Berharga",
    "text":
        "RewindMe memungkinkan Anda untuk tetap terhubung dengan orang-orang terkasih dan merenungkan momen-momen berharga dalam hidup Anda. Nikmati perjalanan hidup yang penuh makna dan biarkan kenangan indah selalu ada di hati Anda.",
  },
  {
    "illustration": "onboarding_2",
    "title": "Buat Kenangan yang Abadi",
    "text":
        "Dengan RewindMe, Anda bisa menyimpan dan merayakan tonggak-tonggak penting, besar atau kecil, yang membuat hidup istimewa. Bagikan kenangan Anda, wariskan kepada generasi berikutnya, dan biarkan warisan Anda hidup dengan indah dan bermakna.",
  },
];
