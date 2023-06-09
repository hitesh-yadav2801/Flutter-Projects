import 'package:flutter/material.dart';

class Country {
  final String name;

  Country({required this.name});
}

class CountriesScreen extends StatelessWidget {
  final List<Country> countries = [
    Country(name: 'United States'),
    Country(name: 'Canada'),
    Country(name: 'United Kingdom'),
    Country(name: 'Germany'),
    Country(name: 'France'),
    Country(name: 'Japan'),
    Country(name: 'China'),
    Country(name: 'India'),
    Country(name: 'Brazil'),
    Country(name: 'Australia'),
  ];

  @override
  Widget build(BuildContext context) {
    // Sort the countries list in alphabetical order
    countries.sort((a, b) => a.name.compareTo(b.name));

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  // Add your logic here to navigate to the previous page
                },
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  itemCount: countries.length,
                  itemBuilder: (context, index) {
                    final country = countries[index];
                    return ListTile(
                      title: Text(country.name),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


