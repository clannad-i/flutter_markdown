import 'package:flutter/material.dart';

import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_markdown_example/demos/basic_markdown_demo.dart';

void main() {
  runApp(MaterialApp(
    title: 'Markdown Demos',
    initialRoute: '/',
    home: BasicMarkdownDemo(),
  ));
}

class MyApp extends StatelessWidget {
  final data = """
a
| head1 | head2 | head3 |
| ------ | ------ | ------ |
| column1 | column2 | column3 |
| column1 | column2 | column3 |

```js
function main1(){
    // 因为不存在编号为123的订单，所以会出错
    exchange.GetOrder("123")
    var error = GetLastError()
    Log(error)
}
```






```python
function main2(){
    // 因为不存在编号为123的订单，所以会出错
    exchange.GetOrder("123")
    var error = GetLastError()
    Log(error)
}
```

```cpp
function main3(){
    // 因为不存在编号为123的订单，所以会出错
    exchange.GetOrder("123")
    var error = GetLastError()
    Log(error)
}
```

```啊
function main4(){
    // 因为不存在编号为123的订单，所以会出错
    exchange.GetOrder("123")
    var error = GetLastError()
    Log(error)
}
```
aaaas
ssa

```啊
function main4(){
    // 因为不存在编号为123的订单，所以会出错
    exchange.GetOrder("123")
    var error = GetLastError()
    Log(error)
}
```

```啊
function main4(){
    // 因为不存在编号为123的订单，所以会出错
    exchange.GetOrder("123")
    var error = GetLastError()
    Log(error)
}
```


            """;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  print('---');
                  RegExp(r'^[ ]{0,3}(`{3,}|~{3,})(.*)$')
                      .allMatches(data)
                      .forEach((element) {
                    print(data.substring(element.start, element.end));
                  });
                },
                icon: Icon(Icons.web_asset_outlined))
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: LayoutBuilder(
            builder: (cxt, con) => Markdown(
              maxWidth: con.maxWidth,
              data: data,
              // extensionSet: MarkdownExtensionSet.githubFlavored.value,
            ),
          ),
        ));
  }
}
