import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      "Escoger la comida",
      "Cillum do in qui ad quis sint non eu irure amet ea anim. Dolor ipsum velit enim nisi do elit anim ullamco ipsum aute est veniam in consequat. Aliquip anim ea dolore nulla.",
      "assets/images/1.png"),
  SlideInfo(
      "Entregar la comida",
      "Ut sunt ex nostrud et pariatur culpa voluptate dolor. Ipsum dolore sit adipisicing nostrud cillum deserunt ea eu dolore. Non consectetur voluptate commodo et dolore ullamco veniam anim amet consequat. Commodo do elit nostrud ullamco pariatur non in anim id.",
      "assets/images/2.png"),
  SlideInfo(
      "Disfruta de tu comida",
      "Anim non commodo dolore Lorem. Nisi amet irure reprehenderit eiusmod elit culpa ad sint aliqua. Ullamco magna laborum irure id nostrud ad enim ea aliqua proident elit deserunt aliquip. Pariatur enim dolor ea ullamco Lorem aliqua in proident velit do duis laborum. Occaecat Lorem consequat esse eiusmod deserunt exercitation cillum exercitation deserunt ipsum consequat duis proident aliqua.",
      "assets/images/3.png"),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageController = PageController();

  bool tutorialVisto = false;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      final page = pageController.page ?? 0;
      if (!tutorialVisto && page >= (slides.length - 1.5)) {
        setState(() {
          tutorialVisto = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Turorial'),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: slides
                .map((data) => Slide(
                    title: data.title,
                    caption: data.caption,
                    imageUrl: data.imageUrl))
                .toList(),
          ),
          Positioned(
              right: 20,
              child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Saltar tutorial"))),
          tutorialVisto
              ? Positioned(
                  bottom: 20,
                  right: 20,
                  child: FadeInRight(
                    from: 14,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Empezar")),
                  ))
              : const SizedBox(),
        ],
      ),
    );
  }
}

class Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const Slide(
      {super.key,
      required this.title,
      required this.caption,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(
              height: 20,
            ),
            Text(caption, style: captionStyle)
          ],
        ),
      ),
    );
  }
}
