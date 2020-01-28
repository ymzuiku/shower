import 'package:flutter/widgets.dart';

///  none > hidden > offscreen
class Shower extends StatelessWidget {
  final Widget child;
  final bool none;
  final bool offscreen;
  final bool hidden;

  Shower({
    @required this.child,
    this.none,
    this.offscreen,
    this.hidden,
  });

  @override
  Widget build(BuildContext context) {
    if (none == true) {
      return SizedBox(width: 0, height: 0);
    }
    if (hidden == true) {
      return new IgnorePointer(
        ignoring: true,
        child: new Opacity(
          opacity: 0.0,
          child: child,
        ),
      );
    }
    if (offscreen == true) {
      return new Offstage(
        offstage: true,
        child: child,
      );
    }

    return child;
  }
}

class SliderShower extends StatelessWidget {
  final Widget child;
  final bool none;
  final bool offscreen;
  final bool hidden;

  SliderShower({
    @required this.child,
    this.none,
    this.offscreen,
    this.hidden,
  });

  @override
  Widget build(BuildContext context) {
    if (none == true) {
      return SizedBox(width: 0, height: 0);
    }
    if (hidden == true) {
      return IgnorePointer(
        ignoring: true,
        child: Opacity(
          opacity: 0.0,
          child: child,
        ),
      );
    }
    if (offscreen == true) {
      return Offstage(
        offstage: true,
        child: child,
      );
    }

    return child;
  }
}
