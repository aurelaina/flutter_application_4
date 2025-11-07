// profile_page.dart
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  ProfilePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.purple.shade50, Colors.blue.shade50],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple.shade400,
                      Colors.blue.shade400,
                      Colors.pink.shade300,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 25,
                      offset: Offset(0, 15),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.account_circle,
                    size: 90,
                    color: Colors.purple.shade800,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.shade200,
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                  border: Border.all(color: Colors.white.withOpacity(0.3)),
                ),
                child: Column(
                  children: [
                    _buildProfileText('Nama: $username Pratama'),
                    SizedBox(height: 15),
                    _buildProfileText('NIM/ID: 12345678'),
                    SizedBox(height: 15),
                    _buildProfileText(
                      'Email: ${username.toLowerCase()}@example.com',
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildInfoChip('Prodi: Informatika'),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.purple.shade300,
                        ),
                        _buildInfoChip('Semester: 6'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple.shade700,
                      Colors.blue.shade700,
                      Colors.pink.shade500,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Kembali ke Dashboard',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: Colors.purple.shade800,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildInfoChip(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.purple.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.purple.shade700,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
