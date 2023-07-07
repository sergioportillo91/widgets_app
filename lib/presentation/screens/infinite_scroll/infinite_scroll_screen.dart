import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {
  static const name = 'infinite_scroll_screen';

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesIds = [1, 2, 3];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  void addImages() {
    final lasId = imagesIds.last;
    imagesIds.addAll([1, 2, 3].map((e) => lasId + e));
  }

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 400) >=
          scrollController.position.maxScrollExtent) {
        loadingImages();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    isMounted = false;
    scrollController.dispose();
  }

  Future loadingImages() async {
    if (isLoading) return;

    isLoading = true;

    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    addImages();

    isLoading = false;

    if (!mounted) return;
    setState(() {});

    moveScrollToBottom();
  }

  Future<void> onRefresh() async {
    isLoading = true;

    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    isLoading = false;

    final lasId = imagesIds.last;

    imagesIds.clear();

    imagesIds.add(lasId + 1);

    addImages();

    setState(() {});
  }

  void moveScrollToBottom() {
    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: onRefresh,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imagesIds.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                image: NetworkImage(
                    'https://picsum.photos/id/${imagesIds[index]}/500/300'),
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: isLoading
              ? SpinPerfect(infinite: true, child: const Icon(Icons.refresh))
              : FadeIn(
                  duration: const Duration(seconds: 1),
                  child: const Icon(Icons.arrow_back_ios_new))),
    );
  }
}
