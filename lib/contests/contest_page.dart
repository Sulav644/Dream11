import 'package:dream11_clone/contests/components/cancellable_message.dart';
import 'package:dream11_clone/contests/components/contest_detail.dart';
import 'package:dream11_clone/contests/components/contest_list.dart';
import 'package:dream11_clone/home_page/components/level_bar.dart';
import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum PageState { contentList, contentDetail }

class ContestPage extends StatelessWidget {
  const ContestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageState = context.watch<PageStateCubit>().state;
    final pages = [ContestList(), ContentDetail()];
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LevelBar(),
            pages[PageState.values.indexOf(pageState)],
          ],
        ),
      ),
    );
  }

  AppBar appBar() => AppBar(
        title: Text('Contests Clone'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.card_giftcard))
        ],
      );
}

class PageStateCubit extends Cubit<PageState> {
  PageStateCubit() : super(PageState.contentList);
  void togglePageState(PageState pageState) => emit(pageState);
}
