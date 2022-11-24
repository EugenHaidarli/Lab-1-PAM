class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;
  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(
      Question("4 + 4 = ?",
          [
            Answer("A. -25", false),
            Answer("B. 2", false),
            Answer("C. -5", false),
            Answer("D. 8", true),
          ]
      )
  );

  list.add(
      Question("3 + 5 = ?",
          [
            Answer("A. 0", false),
            Answer("B. 1", false),
            Answer("C. 12", false),
            Answer("D. 8", true),
          ]
      )
  );
  list.add(
      Question("7 + 3 = ?",
          [
            Answer("A. 10", true),
            Answer("B. 60", false),
            Answer("C. 6", false),
            Answer("D. 0", false),
          ]
      )
  );
  list.add(
      Question("5 - 15 = ?",
          [
            Answer("A. -10", true),
            Answer("B. 10", false),
            Answer("C. 6", false),
            Answer("D. -12", false),
          ]
      )
  );
  list.add(
      Question("23 + 3 * 3 = ?",
          [
            Answer("A. 25", false),
            Answer("B. 32", true),
            Answer("C. 26", false),
            Answer("D. 37", false),
          ]
      )
  );

  list.add(
      Question("9 * 10 = ? ",
          [
            Answer("A.  9", false),
            Answer("B. 70",  false),
            Answer("C. 90", true),
            Answer("D. 50", false),
          ]
      )
  );

  list.add(
      Question("20 * 0 * 10 * 5 = ? ",
          [
            Answer("A.  600", false),
            Answer("B. 0",  true),
            Answer("C. 200", false),
            Answer("D. 5", false),
          ]
      )
  );

  list.add(
      Question("46 - 20 * 2 = ?",
          [
            Answer("A.  6", true),
            Answer("B. 315",  false),
            Answer("C. 30", false),
            Answer("D. 24", false),
          ]
      )
  );

  list.add(
      Question("428 - 385 + 29 = ?",
          [
            Answer("A.  9", false),
            Answer("B. 151",  false),
            Answer("C. 76", false),
            Answer("D. 72", true),
          ]
      )
  );

  list.add(
      Question("95 / 5 = ? ",
          [
            Answer("A.  10", false),
            Answer("B. 12",  false),
            Answer("C. 5", false),
            Answer("D. 19", true),
          ]
      )
  );

  return list;
}