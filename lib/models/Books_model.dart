// ignore_for_file: non_constant_identifier_names

import 'dart:convert' ;

Books booksFromJson(String str) => Books.fromJson(json.decode(str));

class Books {
  int id;
  int year;
  String title;
  String handle;
  String publisher;
  String ISBN;
  int pages;
  List<String> notes;
  String creadedAt;

  Books({
    required this.id,
    required this.year,
    required this.title,
    required this.handle,
    required this.publisher,
    required this.ISBN,
    required this.pages,
    required this.notes,
    required this.creadedAt,
  });

  factory Books.fromJson(Map<String, dynamic> json) => Books(
    id:json["id"],
    year:json["year"],
    title:json["title"],
    handle:json["handle"],
    publisher:json["publisher"],
    ISBN:json["ISBN"],
    pages:json["pages"],
    notes:json["notes"],
    creadedAt:json["creaded_at"],
    );
}
