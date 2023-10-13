import 'package:flutter/material.dart';

class SongDetail {
  String? title;
  List<Attribute>? attributes;
  String? picture;
  String? pictureAlt;
  String? description;
  List<String>? authors;
  String? method;
  ColorScheme? colorScheme;
  Color? textColor;

  SongDetail(
      {this.title,
      this.attributes,
      this.picture,
      this.description,
      this.authors,
      this.method,
      this.textColor,
      this.colorScheme,
      this.pictureAlt});

  @override
  String toString() {
    return 'SongDetail(title: $title, attributes: $attributes, picture: $picture, description: $description, authors: $authors,method: $method),backgroundColor:$colorScheme';
  }

  factory SongDetail.fromJson(Map<String, dynamic> json) => SongDetail(
      title: json['title'] as String?,
      attributes: json['attributes'] as List<Attribute>?,
      picture: json['picture'] as String?,
      description: json['description'] as String?,
      authors: json['authors'] as List<String>?,
      method: json['method'] as String?,
      colorScheme: json['colorScheme'] as ColorScheme?);

  Map<String, dynamic> toJson() => {
        'title': title,
        'attributes': attributes,
        'picture': picture,
        'description': description,
        'authors': authors,
        'method': method,
      };

  SongDetail copyWith({
    String? title,
    List<Attribute>? attributes,
    String? picture,
    String? description,
    List<String>? authors,
    String? method,
  }) {
    return SongDetail(
      title: title ?? this.title,
      attributes: attributes ?? this.attributes,
      picture: picture ?? this.picture,
      description: description ?? this.description,
      authors: authors ?? this.authors,
      method: method ?? this.method,
    );
  }
}

class Attribute {
  final Image icon;
  final String title;
  Attribute({required this.icon, required this.title});
}
