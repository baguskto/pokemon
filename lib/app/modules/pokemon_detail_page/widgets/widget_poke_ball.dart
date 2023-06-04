part of '../pokemon_detail_page.dart';

class WidgetPokeBall extends StatefulWidget {
  @override
  _WidgetPokeBallState createState() => _WidgetPokeBallState();
}

class _WidgetPokeBallState extends State<WidgetPokeBall>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * pi,
          child: Image.asset(
            'assets/images/pokeball.png',
            color: Colors.white24,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
