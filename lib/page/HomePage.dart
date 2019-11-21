import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigation_with_bloc/navigation/navigation_bloc.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex;
  final NavigationBloc navigationBloc = NavigationBloc();

  @override
  void initState() {
    super.initState();
    navigationBloc.add(ChangeFragmentEvent(1));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocProvider(
        builder: (context) => navigationBloc,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: BlocListener(
            bloc: navigationBloc,
            listener: (BuildContext context, NavigationState state) {
              if (state is NewFragmentState) {
                setState(() {
                  _selectedIndex = state.index;
                });
              }
            },
            child: BlocBuilder(
              bloc: navigationBloc,
              builder: (BuildContext context, NavigationState state){
                if (state is NewFragmentState) {
                  return state.newFragment;
                }  else {
                  return Container();
                }
              },
            ),
          ),
          )
        ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => {
          _changeFragment(index)
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Apps'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
              activeColor: Colors.purpleAccent
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue
          ),
        ],
      ),
    );
  }

  void _changeFragment(int index){
    navigationBloc.add(ChangeFragmentEvent(index));
  }

  @override
  void dispose() {
    super.dispose();
    navigationBloc?.close();
  }

}