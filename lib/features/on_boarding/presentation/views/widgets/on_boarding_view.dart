import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_application_1/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isvisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
                  0,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          image: Assets.imagesPageViewItem1Image,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'مرحبًا بك في',
              ),
              Text(
                '  HUB',
              ),
              Text(
                'Fruit',
              ),
            ],
          ),
        ),
        PageViewItem(
          isvisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
                  1,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          image: Assets.imagesPageViewItem2Image,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: const Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
