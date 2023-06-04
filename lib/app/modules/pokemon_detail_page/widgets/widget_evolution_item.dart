part of '../pokemon_detail_page.dart';

class _WidgetEvolutionItem extends StatelessWidget {
  const _WidgetEvolutionItem({
    Key? key,
    required this.name,
    required this.secondName,
    required this.level,
    required this.id,
    this.secondID,
  }) : super(key: key);

  final int id;
  final String name;
  final int? secondID;
  final String secondName;
  final dynamic level;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildItem(id, name),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.arrow_forward),
            if (level != null)
              Text(
                'Lvl $level',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
          ],
        ),
        _buildItem(secondID, secondName),
      ],
    ).marginOnly(bottom: 40);
  }

  Widget _buildItem(int? id, String name) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            shape: BoxShape.circle,
          ),
          child: WidgetImage(
            id: id,
            width: 100,
            height: 100,
          ),
        ),
        Text(name),
      ],
    );
  }
}
