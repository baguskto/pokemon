import 'dart:convert';

class Pokemon {
  Pokemon({
    required this.count,
    required this.next,
    // required this.previous,
    required this.results,
  });

  final int count;
  final String next;
  // final String previous;
  final List<Result> results;

  Pokemon copyWith({
    required int count,
    required String next,
    // required String previous,
    required List<Result> results,
  }) =>
      Pokemon(
        count: count ?? this.count,
        next: next ?? this.next,
        // previous: previous ?? this.previous,
        results: results ?? this.results,
      );

  factory Pokemon.fromRawJson(String str) => Pokemon.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
    count: json["count"],
    next: json["next"],
    // previous: json["previous"],
    results:
    List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    // "previous": previous,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  Result copyWith({
    required String name,
    required String url,
  }) =>
      Result(
        name: name ?? this.name,
        url: url ?? this.url,
      );

  factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    name: json["name"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "url": url,
  };
}
