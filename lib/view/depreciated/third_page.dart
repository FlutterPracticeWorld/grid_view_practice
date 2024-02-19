import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  // 인풋 필드의 상태를 저장할 변수
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 인풋 필드 추가
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: '인풋',
                ),
                onChanged: (text) {
                  // 인풋 필드의 값이 변경될 때마다 호출되는 콜백
                  setState(() {
                    _inputText = text;
                  });
                },
              ),
            ),
            // 버튼을 눌렀을 때 _inputText 값을 보여주는 Text 위젯 추가
            InkWell(
              onTap: () {
                // 버튼이 탭될 때 실행할 동작
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('인풋 값'),
                      content: Container(
                          color: const Color(0xffeeee00),
                          alignment: Alignment.center,
                          child: Text(_inputText)
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('닫기'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  '버튼',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
