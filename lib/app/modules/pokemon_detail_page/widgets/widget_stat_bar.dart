part of '../pokemon_detail_page.dart';

class _WidgetStatBar extends StatelessWidget {
  final List<Stat> stats;

  const _WidgetStatBar({
    Key? key,
    required this.stats,
  }) : super(key: key);

  List<Widget> _buildStats() {
    return stats.map((e) {
      return Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              e.stat.name.replaceAll('-', ' ').capitalizeFirst ?? '',
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: Text(
              e.baseStat.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: _WidgetStatBarItem(stat: e.baseStat)
                .paddingSymmetric(horizontal: 10),
          ),
        ],
      ).marginOnly(bottom: 20);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: _buildStats());
  }
}

class _WidgetStatBarItem extends StatefulWidget {
  final int stat;

  const _WidgetStatBarItem({
    Key? key,
    required this.stat,
  }) : super(key: key);

  @override
  _WidgetStatBarItemState createState() => _WidgetStatBarItemState();
}

class _WidgetStatBarItemState extends State<_WidgetStatBarItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    final curvedAnimation = CurvedAnimation(
      curve: Curves.easeInOut,
      parent: _controller,
    );
    _animation = Tween<double>(begin: 0, end: widget.stat.toDouble())
        .animate(curvedAnimation);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 6,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, _) {
            return FractionallySizedBox(
              widthFactor: _animation.value / 120,
              child: Container(
                height: 6,
                decoration: BoxDecoration(
                  color: colorByStat(widget.stat),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
