import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ScrollService {
  ScrollService(
      { ScrollController scrollController}) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(

        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }
}