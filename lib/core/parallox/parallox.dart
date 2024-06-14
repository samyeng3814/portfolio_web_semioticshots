import 'package:flutter/material.dart';

class ParalloxEffect extends StatefulWidget {
  final List<String> imgList;
  const ParalloxEffect({super.key, required this.imgList});

  @override
  ParalloxEffectState createState() => ParalloxEffectState();
}

class ParalloxEffectState extends State<ParalloxEffect> {
  late PageController _pageController;
  double page = 0.0;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.5,
    );

    _pageController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    setState(() {
      page = _pageController.page!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 240,
        child: PageView.builder(
          controller: _pageController,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ParallaxImage(
                url: widget.imgList[index],
                horizontalSlide: (index - page).clamp(-1, 1).toDouble(),
              ),
            );
          },
          itemCount: widget.imgList.length,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.removeListener(_onScroll);
    _pageController.dispose();
    super.dispose();
  }
}

class ParallaxImage extends StatelessWidget {
  final String url;
  final double horizontalSlide;

  const ParallaxImage({
    super.key,
    required this.url,
    required this.horizontalSlide,
  });

  @override
  Widget build(BuildContext context) {
    final scale = 1 - horizontalSlide.abs();
    final size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width * ((scale * 0.8) + 0.8),
        height: size.height * ((scale * 0.2) + 0.2),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          child: Image.asset(
            'assets/images/$url',
            alignment: Alignment(horizontalSlide, 1),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
