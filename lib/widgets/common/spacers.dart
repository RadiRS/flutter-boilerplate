import 'package:flutter/cupertino.dart';
import 'package:flutter_boilerplate/theme/styles.dart';

class Space extends StatelessWidget {
  final double width;
  final double height;

  const Space(this.width, this.height);

  @override
  Widget build(BuildContext context) => SizedBox(width: width, height: height);
}

class VSpace extends StatelessWidget {
  final double size;

  const VSpace(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Space(0, size);

  static final VSpace xs = VSpace(Insets.xs);
  static final VSpace sm = VSpace(Insets.sm);
  static final VSpace med = VSpace(Insets.med);
  static final VSpace lg = VSpace(Insets.lg);
  static final VSpace xl = VSpace(Insets.xl);
}

class HSpace extends StatelessWidget {
  final double size;

  const HSpace(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Space(size, 0);

  static final HSpace xs = HSpace(Insets.xs);
  static final HSpace sm = HSpace(Insets.sm);
  static final HSpace med = HSpace(Insets.med);
  static final HSpace lg = HSpace(Insets.lg);
  static final HSpace xl = HSpace(Insets.xl);
}
