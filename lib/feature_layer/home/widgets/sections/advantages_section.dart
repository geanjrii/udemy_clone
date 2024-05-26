// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:udemy_clone/app/breakpoints.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakpoint) {
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: const Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 8,
              children: [
                HorizontalAdvantage(
                  title: '+45.000 alunos',
                  subtitle: 'Didática garantida',
                ),
                HorizontalAdvantage(
                  title: '+45.000 alunos',
                  subtitle: 'Didática garantida',
                ),
                HorizontalAdvantage(
                  title: '+45.000 alunos',
                  subtitle: 'Didática garantida',
                ),
              ],
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: const Row(
            children: [
              VerticalAdvantage(
                title: '+45.000 alunos',
                subtitle: 'Didática garantida',
              ),
              SizedBox(width: 4),
              VerticalAdvantage(
                title: '+45.000 alunos',
                subtitle: 'Didática garantida',
              ),
              SizedBox(width: 4),
              VerticalAdvantage(
                title: '+45.000 alunos',
                subtitle: 'Didática garantida',
              ),
            ],
          ),
        );
      },
    );
  }
}

class HorizontalAdvantage extends StatelessWidget {
  const HorizontalAdvantage({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}

class VerticalAdvantage extends StatelessWidget {
  const VerticalAdvantage({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
