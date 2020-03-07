import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobile_app_test/apis/data_response.dart';
import 'package:mobile_app_test/res/coolor.dart';
import 'package:dio/dio.dart';

import 'package:provider/provider.dart';
import '../../apis/test_api.dart';

class LeagueTableWidget extends StatefulWidget {
  @override
  _LeagueTableWidgetState createState() => _LeagueTableWidgetState();
}

class _LeagueTableWidgetState extends State<LeagueTableWidget> {
  String nextPage = "https://reqres.in/api/users?page=1";
  ScrollController _scrollController = new ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isLoading = false;
  List data = new List();
  final dio = new Dio();

  @override
  void initState() {
    this._getMoreData();
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  void _getMoreData() async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
      final response = await dio.get(nextPage);
      if (response.data['total'] == data.length) {
        _scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text("No more data to load"),
        ));
      }
      // print(response);
      print(response.data['data'].length);
      List tempList = [];
      nextPage = "https://reqres.in/api/users?page=" +
          (response.data['page'] + 1).toString();
      for (int i = 0; i < response.data['data'].length; i++) {
        tempList.add(response.data['data'][i]);
      }

      setState(() {
        isLoading = false;
        data.addAll(tempList);
        // print(data);
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildProgressIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Opacity(
          opacity: isLoading ? 1.0 : 00,
          child: new CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget _buildList() {
    return ListView.separated(
      //+1 for progressbar
      separatorBuilder: (_, __) {
        return SizedBox(
          height: 35,
        );
      },
      itemCount: data.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == data.length) {
          return _buildProgressIndicator();
        } else {
          return new ListTile(
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundImage: NetworkImage(data[index]['avatar']),
            ),
            title: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Name: ' +
                          data[index]['first_name'] +
                          " " +
                          data[index]['last_name'],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Email: ' + data[index]['email'],
                      style: TextStyle(
                        fontSize: 15,
                        color: Coolor.GREY,
                      ),
                    ),
                    Text(
                      'Id: ' + data[index]['id'].toString(),
                      style: TextStyle(
                        fontSize: 15,
                        color: Coolor.GREY,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
      controller: _scrollController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Users Pagination"),
        centerTitle: true,
      ),
      body: Container(
        child: _buildList(),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }
}
