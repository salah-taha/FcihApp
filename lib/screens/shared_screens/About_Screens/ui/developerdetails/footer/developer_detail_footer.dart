import 'package:fcaihu/screens/shared_screens/About_Screens/ui/Developers/Developer.dart';
import 'package:fcaihu/screens/shared_screens/About_Screens/ui/developerdetails/footer/portfolio_showcase.dart';
import 'package:fcaihu/screens/shared_screens/About_Screens/ui/developerdetails/footer/skills_showcase.dart';
import 'package:flutter/material.dart';


class DeveloperShowcase extends StatefulWidget {
  DeveloperShowcase(this.friend);

  final Developer friend;

  @override
  _DeveloperShowcaseState createState() => new _DeveloperShowcaseState();
}

class _DeveloperShowcaseState extends State<DeveloperShowcase>
    with TickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _tabs = [
      new Tab(text: 'Portfolio'),
      new Tab(text: 'Skills'),
    ];
    _pages = [
      new PortfolioShowcase(),
      new SkillsShowcase(),
    ];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          new TabBar(
            controller: _controller,
            tabs: _tabs,
            indicatorColor: Colors.white,
          ),
          new SizedBox.fromSize(
            size: const Size.fromHeight(300.0),
            child: new TabBarView(
              controller: _controller,
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}
