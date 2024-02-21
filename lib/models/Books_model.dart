import 'dart:convert';

Books booksfromJson(String str) => Books.fromJson(json.decode(str));

class Books {
  int id;
  int year;
  String title;
  String handle;
  String publisher;
  String isbn;
  int pages;
  List<String> notes;
  DateTime createdAt;
  //  List<Villain> villains;

  Books({
    required this.id,
    required this.year,
    required this.title,
    required this.handle,
    required this.publisher,
    required this.isbn,
    required this.pages,
    required this.notes,
    required this.createdAt,
    //s required this.villains,
  });

  factory Books.fromJson(Map<String, dynamic> json) => Books(
        id: json["id"],
        year: json["Year"],
        title: json["Title"],
        handle: json["handle"],
        publisher: json["Publisher"],
        isbn: json["ISBN"],
        pages: json["Pages"],
        notes: List<String>.from(json["Notes"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        //  villains: List<Villain>.from(json["villains"].map((x) => Villain.fromJson(x))),
      );
}
