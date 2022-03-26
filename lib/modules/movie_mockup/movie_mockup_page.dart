import 'package:flutter/material.dart';

class MovieMockupPage extends StatefulWidget {
  const MovieMockupPage({Key? key}) : super(key: key);

  @override
  State<MovieMockupPage> createState() => _MovieMockupPageState();
}

class _MovieMockupPageState extends State<MovieMockupPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  PageController _pageController = PageController();
  var n = 0;
  bool isLoading = true;

  Future<void> setLoading() async {
    setState(() {
      isLoading = false;
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      isLoading = true;
    });
  }

  void changePage(page) {
    setLoading();
    _pageController.animateToPage(page,
        duration: Duration(milliseconds: 200), curve: Curves.easeInExpo);
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 35,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 35,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: TabBar(
            onTap: (value) {
              changePage(value);
            },
            controller: _tabController,
            isScrollable: true,
            tabs: [
              Tab(text: 'New'),
              Tab(text: 'Popular'),
              Tab(text: 'Genres'),
              Tab(text: 'Animations'),
              Tab(text: 'Action'),
              Tab(text: 'Documentation'),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: Visibility(
                visible: isLoading,
                replacement: CircularProgressIndicator(),
                child: Text('aslkjdklasjlkdjaslkdj'),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Visibility(
                visible: isLoading,
                replacement: CircularProgressIndicator(),
                child: Text('aslkjdklasjlkdjaslkdj'),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Visibility(
                visible: isLoading,
                replacement: CircularProgressIndicator(),
                child: Text('aslkjdklasjlkdjaslkdj'),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Visibility(
                visible: isLoading,
                replacement: CircularProgressIndicator(),
                child: Text('aslkjdklasjlkdjaslkdj'),
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: Center(
              child: Visibility(
                visible: isLoading,
                replacement: CircularProgressIndicator(),
                child: Text('aslkjdklasjlkdjaslkdj'),
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Visibility(
                visible: isLoading,
                replacement: CircularProgressIndicator(),
                child: Text('aslkjdklasjlkdjaslkdj'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
