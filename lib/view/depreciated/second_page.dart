import 'package:daru_flutter/component/normal_button.dart';
import 'package:daru_flutter/component/normal_inkwell.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('두 번째 페이지'),
        automaticallyImplyLeading: true,
        actions: [
          Text(
            "안녕"
          )
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    )
                  )
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const Text(
                '이것은 두 번째 페이지입니다.',
                style: TextStyle(fontSize: 24.0),
              ),
              ElevatedButton(
                onPressed: () {
                  // 첫 번째 페이지로 돌아가기
                  Navigator.pop(context);
                },
                child: const Text('첫 번째 페이지로 돌아가기'),
              ),
              NormalButton(),
              const SizedBox(height: 9.0,),
              NormalInkWell(
                onTap: () {
                  print(_controller.text);
                },
                backgroundColor: _controller.text.length > 0 ? Colors.red : Colors.purple,
                text: "HEllO",
              )
            ],
          ),
        ),
      ),
    );
  }
}
