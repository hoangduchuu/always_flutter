import 'dart:math';

import 'package:developerfect_app/model/user_model.dart';
import 'package:developerfect_app/route/navigators.dart';
import 'package:developerfect_app/utils/log/my_logger.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        MyLogger.d("USER: ${user.id}");
        AppNavigators.gotoUserDetail(userId: '${user.id}');
      },
      child: ListTile(
        title: Text(user.name),
        subtitle: Text(user.email),
        leading: CircleAvatar(
          child: 1 == 1
              ? Image.network('https://picsum.photos/id/${Random().nextInt(10)}/200/200/')
              : Text(
                  '${user.name[0].toUpperCase()}${user.name.split('').last[0].toUpperCase()}',
                ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
