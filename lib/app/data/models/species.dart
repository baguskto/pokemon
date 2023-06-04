import 'dart:convert';

class Species {
  Species({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  Species copyWith({
    required String name,
    required String url,
  }) =>
      Species(
        name: name ?? this.name,
        url: url ?? this.url,
      );

  factory Species.fromRawJson(String str) => Species.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Species.fromJson(Map<String, dynamic> json) => Species(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
