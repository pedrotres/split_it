import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/info_card_widget.dart';
import 'package:split_it/modules/login/repository/models/user_model.dart';

import 'widgets/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBarWidget(
        user: user,
        onTapAddButton: () {},
      ),
      //body: InfoCardWidget(value: 145,),
    );
  }
}
