import 'package:flutter/material.dart';

class NotificationIcon extends StatefulWidget {
  final VoidCallback onTap;
  final bool haveNewNotification;
  const NotificationIcon(
      {super.key, required this.haveNewNotification, required this.onTap});

  @override
  State<NotificationIcon> createState() => _NotificationIconState();
}

class _NotificationIconState extends State<NotificationIcon> {
  @override
  Widget build(BuildContext context) {
    return Badge(
      alignment: Alignment.topRight,
      backgroundColor: const Color.fromRGBO(235, 16, 16, 1),
      smallSize: 9.23,
      isLabelVisible: widget.haveNewNotification,
      child: InkWell(
        onTap: widget.onTap,
        child: const Icon(
          Icons.notifications_none_outlined,
          size: 30,
        ),
      ),
    );
  }
}
