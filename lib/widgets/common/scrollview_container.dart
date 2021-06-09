import 'package:flutter/material.dart';

class ScrollViewContainer extends StatelessWidget {
  final List<Widget> children;
  final ScrollController? controller;
  final EdgeInsetsGeometry? padding;

  const ScrollViewContainer({
    Key? key,
    required this.children,
    this.controller,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      padding: padding,
      child: Column(
        children: children,
      ),
    );
  }
}

class RefreshScrollViewContainer extends StatelessWidget {
  final List<Widget> children;
  final Future<void> Function() onRefresh;

  const RefreshScrollViewContainer({
    Key? key,
    required this.children,
    required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ScrollViewContainer(
        children: children,
      ),
    );
  }
}
