// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

class ExPageView extends StatelessWidget {
  const ExPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildKeepAlive();
  }

  Widget _buildBasic() {
    final PageController controller = PageController();
    return PageView.builder(
      controller: controller,
      itemCount: 4,
      scrollDirection: Axis.vertical,
      onPageChanged: (value) => print(value),
      itemBuilder: (context, index) => Container(
        color: Color(Random().nextInt(0xffffff)).withOpacity(0.4),
        alignment: Alignment.center,
        child: Text(
          "Page $index",
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }

  Widget _buildKeepAlive() {
    return PageView.builder(
      itemCount: 4,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => index & 1 == 1
          ? Container(
              color: Color(Random().nextInt(0xffffff)).withOpacity(0.4),
              alignment: Alignment.center,
              child: Text(
                "Page $index",
                style: TextStyle(fontSize: 36),
              ),
            )
          : KeepAliveWrapper(
              child: Container(
                color: Color(Random().nextInt(0xffffff)).withOpacity(0.4),
                alignment: Alignment.center,
                child: Text(
                  "Page $index",
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ),
    );
  }
}

class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper({
    Key? key,
    this.keepAlive = true,
    required this.child,
  }) : super(key: key);
  final bool keepAlive;
  final Widget child;

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if (oldWidget.keepAlive != widget.keepAlive) {
      // keepAlive 状态需要更新，实现在 AutomaticKeepAliveClientMixin 中
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;
}
