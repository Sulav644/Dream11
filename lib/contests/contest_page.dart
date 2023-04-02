import 'package:dream11_clone/contests/components/contest_detail.dart';
import 'package:dream11_clone/contests/components/contest_list.dart';
import 'package:dream11_clone/home_page/components/level_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum PageState { contentList, contentDetail }

class ContestPage extends StatelessWidget {
  const ContestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageState = context.watch<PageStateCubit>().state;
    final pages = [const ContestList(), const ContentDetail()];
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LevelBar(),
            pages[PageState.values.indexOf(pageState)],
          ],
        ),
      ),
    );
  }

  AppBar appBar() => AppBar(
        title: const Text('Contests Clone'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.card_giftcard))
        ],
      );
}

class PageStateCubit extends Cubit<PageState> {
  PageStateCubit() : super(PageState.contentList);
  void togglePageState(PageState pageState) => emit(pageState);
}
