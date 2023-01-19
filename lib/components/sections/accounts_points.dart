import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: BoxCard(
            boxContent: _AccountPointsContent(),
          ),
        ),
      ],
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8.0,
          ),
          child: Text(
            'Pontos Totais :',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Text(
          "${3000}",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          child:
              Text("Objetivos", style: Theme.of(context).textTheme.bodyMedium),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
              ),
              child: ColorDot(
                color: Colors.red,
              ),
            ),
            Text("Entrega gratis : ${150000}pts")
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
              ),
              child: ColorDot(
                color: Colors.blue,
              ),
            ),
            Text("1 mês gratis de Streaming : ${300000}pts")
          ],
        )
      ],
    );
  }
}
