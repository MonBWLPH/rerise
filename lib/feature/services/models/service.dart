// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class OurService {
  final String key;
  final String title;
  final String intro;
  final List<String> bullets;
  final String img;
  OurService({
    required this.key,
    required this.title,
    required this.intro,
    required this.bullets,
    required this.img,
  });

  OurService copyWith({
    String? key,
    String? title,
    String? intro,
    List<String>? bullets,
    String? img,
  }) {
    return OurService(
      key: key ?? this.key,
      title: title ?? this.title,
      intro: intro ?? this.intro,
      bullets: bullets ?? this.bullets,
      img: img ?? this.img,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'title': title,
      'intro': intro,
      'bullets': bullets,
      'img': img,
    };
  }

  factory OurService.fromMap(Map<String, dynamic> map) {
   
    return OurService(
      key: map['key'] as String,
      title: map['title'] as String,
      intro: map['intro'] as String,
      bullets: (map['bullets'] as List<dynamic>)
          .map((item) => item.toString())
          .toList(),
      img: map['img'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OurService.fromJson(String source) =>
      OurService.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Service(key: $key, title: $title, intro: $intro, bullets: $bullets, img: $img)';
  }

  @override
  bool operator ==(covariant OurService other) {
    if (identical(this, other)) return true;

    return other.key == key &&
        other.title == title &&
        other.intro == intro &&
        listEquals(other.bullets, bullets) &&
        other.img == img;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        title.hashCode ^
        intro.hashCode ^
        bullets.hashCode ^
        img.hashCode;
  }
}
