import 'package:daru_flutter/view/home/home_card.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  HomeTab({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> json = [
    {
      'text': "제목1",
      'content': "내용2",
    },
    {
      'text': "제목3",
      'content': "내용3",
    },
    {
      'text': "제목4",
      'content': "내용4",
    },
    {
      'text': "제목5",
      'content': "내용5",
    },
    {
      'text': "제목6",
      'content': "내용6",
    },
    {
      'text': "제목7",
      'content': "내용7",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxHeight);
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100.0,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemBuilder: (_, index) => HomeCard(
                      text: json[index]["text"],
                      content: json[index]["content"],
                    ),
                    separatorBuilder: (_, __) => const SizedBox(
                      width: 10.0,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: json.length,
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: List.generate(
                    json.length,
                        (index) => HomeCard(
                      text: json[index]["text"],
                      content: json[index]["content"],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
