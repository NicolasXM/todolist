import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:todolist/controllers/posts_controller.dart';
import 'package:todolist/widgets/custom_button_widget.dart';

class NavigatorOne extends StatefulWidget {
  const NavigatorOne({Key? key}) : super(key: key);

  @override
  State<NavigatorOne> createState() => _NavigatorOneState();
}

class _NavigatorOneState extends State<NavigatorOne> {
  final PostsController _controller = PostsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation:
                    Listenable.merge([_controller.posts, _controller.inLoader]),
                builder: (_, __) => _controller.inLoader.value
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.posts.value.length,
                        itemBuilder: (_, idx) => ListTile(
                          title: Text(_controller.posts.value[idx].title),
                        ),
                      ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtonWidget(
                disabled: false,
                onPressed: () => _controller.callAPI(),
                title: 'CustomBtn',
                titleSize: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
