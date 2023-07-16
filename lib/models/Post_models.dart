class PostModal {
  final int chapter_number;
  final String name;
  final String translation;
  final String transliteration;
  final String meaning_hi;
  final String summary_hi;

  PostModal(
      {required this.chapter_number,
      required this.meaning_hi,
      required this.name,
      required this.summary_hi,
      required this.translation,
      required this.transliteration});

  factory PostModal.formMap({required Map data}) {
    return PostModal(
      chapter_number: data['chapter_number'],
      meaning_hi: data['meaning_hi'],
      name: data['name'],
      summary_hi: data['summary_hi'],
      translation: data['translation'],
      transliteration: data['transliteration'],
    );
  }
}
