class DecisionNode {
  final String? question;
  final DecisionNode? yes;
  final DecisionNode? no;
  final String? result;

  DecisionNode({this.question, this.yes, this.no, this.result});
}
