import 'package:flutter/material.dart';

class BusinessListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Jop looking forward',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual user image URL
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: '지역 일자리를 검색하세요!',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                BusinessCard(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJejcO9poeGELpRjAxrZ0kRhUP-IjFDY0pcw&s',
                  name: '강원도 태백 배추 공장',
                  foreignWorkers: 15,
                  businessType: "식품",
                ),
                BusinessCard(
                  imageUrl: 'https://dimg.donga.com/wps/NEWS/IMAGE/2017/07/26/85526065.1.jpg',
                  name: 'Sahid Raya Hotel',
                  foreignWorkers: 10,
                  businessType: 'Hospitality',
                ),
                // Add more BusinessCard widgets here
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BusinessCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int foreignWorkers;
  final String businessType;

  BusinessCard({
    required this.imageUrl,
    required this.name,
    required this.foreignWorkers,
    required this.businessType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4,
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(name),
          subtitle: Text('Foreign Workers: $foreignWorkers\nBusiness Type: $businessType'),
        ),
      ),
    );
  }
}
