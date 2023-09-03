// ignore_for_file: file_names

class Student {
  String _name = '';
  final List<double> _scores = [];

  Student(String name) {
    _name = name;
  }

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  List<double> getScores() {
    return _scores;
  }

  void addScore(double score) {
    _scores.add(score);
  }

  double getAverage() {
    var totalScore = 0.0;
    for (var score in _scores) {
      totalScore += score;
    }
    var average = totalScore / _scores.length;
    return average.isNaN ? 0 : average;
  }

  bool isAproved(double minAverage) {
    return getAverage() >= minAverage;
  }
}
