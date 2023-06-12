import 'package:flutter/material.dart';

class Announcement extends StatelessWidget {
  final List<Map<String, String>> announcements = [
    {
      'title': 'Pengumuman Artefak PA 2',
      'description':
          'Selamat siang mahasiswa sekalian berikut adalah jadwal seminar PA 2 angkatan 21'
    },
    {
      'title': 'Pengumuman Artefak PA 1',
      'description':
          'Selamat siang mahasiswa sekalian berikut adalah jadwal seminar PA 1 angkatan 22'
    },
    {
      'title': 'Pengumuman Artefak PA 3',
      'description':
          'Selamat siang mahasiswa sekalian berikut adalah jadwal seminar PA 3 angkatan 20 prodi D4 TRPL'
    },
  ];

  Announcement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              Text('Pengumuman',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            children: announcements.map((announcement) {
              return Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          announcement['title']!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            announcement['description']!,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
