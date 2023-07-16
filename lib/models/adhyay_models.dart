class AdhayayModal {
  final int chapter_id;
  final int externalId;
  final String text;
  final String transliteration;
  final String title;
  final int verse_number;

  AdhayayModal({
    required this.chapter_id,
    required this.externalId,
    required this.text,
    required this.transliteration,
    required this.title,
    required this.verse_number,
  });

  factory AdhayayModal.formMap({required Map chr}) {
    return AdhayayModal(
      chapter_id: chr['chapter_id'],
      externalId: chr['externalId'],
      text: chr['text'],
      transliteration: chr['transliteration'],
      title: chr['title'],
      verse_number: chr['verse_number'],
    );
  }
}
