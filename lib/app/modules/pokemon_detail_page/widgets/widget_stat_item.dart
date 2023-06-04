part of '../pokemon_detail_page.dart';

class _WidgetStatItem extends StatelessWidget {
  const _WidgetStatItem({
    Key? key,
    required this.name,
    required this.sub,
  }) : super(key: key);

  final String name;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Text(
            name ?? '',
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Text(
            sub ?? '',
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(54, 54, 54, 1),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ).marginOnly(bottom: 20);
  }
}
