import 'package:flutter/material.dart';

class ActivityContent extends StatelessWidget {
  const ActivityContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black45)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  width: 60,
                  height: 60,
                  decoration:  const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(
                          255, 227, 241, 252)
                  ),
                  child: const Center(
                      child: Icon(Icons.celebration, size: 35, color: Color.fromARGB(
                          255, 42, 147, 230),)
                  ),
                ),
                Expanded(child: Text('Quizzes : ', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black, fontWeight: FontWeight.bold))),
                Expanded(child: Text('Participate and win eciting prices', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black)))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width:double.infinity,
                height: 1,
                color: Colors.black45,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  width: 60,
                  height: 60,
                  decoration:  const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(
                          255, 227, 241, 252)
                  ),
                  child: const Center(
                      child: Icon(Icons.calculate_outlined, size: 35, color: Color.fromARGB(
                          255, 42, 147, 230),)
                  ),
                ),
                Expanded(child: Text('Medical Calculators : ', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black, fontWeight: FontWeight.bold))),
                Expanded(child: Text('Get Access to 800+ Evidence Based Calculators', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black)))
              ],
            ),
          ],
        ),
    );
  }
}
