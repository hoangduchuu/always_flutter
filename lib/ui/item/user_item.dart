import 'dart:math';

import 'package:developerfect_app/model/user_model.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),

      subtitle: Text(user.email),
      leading: CircleAvatar(
        child: 1 == 1
            ? Image.network('https://i.pravatar.cc/300?img=${Random().nextInt(10)}')
            : Text(
                '${user.name[0].toUpperCase()}${user.name.split('').last[0].toUpperCase()}',
              ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
