import 'package:flutter/material.dart';
import '../models/decision_node.dart';
import '../data/questions.dart';

class DecisionScreen extends StatefulWidget {
  const DecisionScreen({super.key});

  @override
  State<DecisionScreen> createState() => _DecisionScreenState();
}

class _DecisionScreenState extends State<DecisionScreen> {
  DecisionNode currentNode = decisionTreeRoot;

  void nextNode(bool isYes) {
    setState(() {
      currentNode = isYes ? currentNode.yes! : currentNode.no!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isResult = currentNode.result != null;

    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isResult ? currentNode.result! : currentNode.question!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              if (!isResult) ...[
                ElevatedButton(
                  onPressed: () => nextNode(true),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                  ),
                  child: const Text("Yes"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => nextNode(false),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                  ),
                  child: const Text("No"),
                ),
              ] else ...[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentNode = decisionTreeRoot;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    backgroundColor: Colors.orangeAccent,
                  ),
                  child: const Text("Start Over"),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
