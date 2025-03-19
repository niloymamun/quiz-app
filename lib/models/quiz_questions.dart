class QuizQuestion{
  const QuizQuestion( this.tex, this.answer);
  final String tex;
  final List<String> answer;
  // ignore: non_constant_identifier_names
  List<String> get ShuffledAnswer{
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }

}