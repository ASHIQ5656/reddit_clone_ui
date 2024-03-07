import 'package:flutter/material.dart';

class PopularPostContainer extends StatelessWidget {
  const PopularPostContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(
                        Icons.local_fire_department_sharp,
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withAlpha(150),
                      ),
                    ]),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
