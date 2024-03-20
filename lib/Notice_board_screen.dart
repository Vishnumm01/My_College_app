// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class NoticeBoard extends StatelessWidget {
  const NoticeBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('College Notice Board'),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(
        children: const [
          NoticeItem(
            title: 'DIPLOMA NOV2023 RESULT PUBLISHED...!',
            date: 'March 1 ',
            description:
                '> Result available in student login.               '
               
                '  > Those who need revaluation/answer script copy, apply upto 11/03/2023',
          ),
          
          
          NoticeItem(
            title: 'Tech Fest - ',
            date: 'feb 10 - feb 26',
            description:
                'Explore the latest technology trends and innovations!',
          ),
        ],
      ),
    );
  }
}

class NoticeItem extends StatelessWidget {
  final String title;
  final String date;
  final String description;

  const NoticeItem({
    Key? key,
    required this.title,
    required this.date,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Date: $date',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
