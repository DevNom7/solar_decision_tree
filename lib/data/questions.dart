import '../models/decision_node.dart';

final DecisionNode decisionTreeRoot = DecisionNode(
  question: "Do you own a home?",
  yes: DecisionNode(
    question: "Does your roof get a lot of sunlight?",
    yes: DecisionNode(
      question: "Do you plan to stay in the house for more than 5 years?",
      yes: DecisionNode(result: "You should consider Solar Panels ☀️"),
      no: DecisionNode(
        result: "An EV may be the better short-term investment for you 🚗",
      ),
    ),
    no: DecisionNode(
      result: "Your roof isn't suitable for solar panels. Consider an EV 🚗",
    ),
  ),
  no: DecisionNode(
    question: "Do you have a garage or outdoor outlet?",
    yes: DecisionNode(result: "You can easily charge an EV - go electric ⚡️"),
    no: DecisionNode(
      result:
          "Neither option is ideal for you; consider waiting or exploring hybrids, or maintaining your gas car for now 🛑",
    ),
  ),
);
