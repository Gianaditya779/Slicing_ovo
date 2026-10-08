import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),

              // Kartu nama & nomor HP
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xFFE3D9F8),
                      child: Icon(Icons.person, color: Color(0xFF4C2A9B)),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gian Aditya Mahardika',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(height: 4),      
                          Text('0813-3167-1057'),
                        ],
                      ),
                    ),
                    Text(
                      'Ubah',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code_scanner, size: 30),
                    SizedBox(width: 12),
                    Text(
                      'Loyalty Code',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),

             
              Text(
                'Akun',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),

              ListTile(
                leading: Icon(Icons.stars, color: Colors.deepPurple),
                title: Text('OVO Premier',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4C2A9B),
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Upgrade'),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.circle, color: Colors.black),
                title: Text('OVO Points',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.chevron_right),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.star, color: Colors.black),
                title: Text('OVO Stamp',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.chevron_right),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.link, color: Colors.black),
                title: Text('Aplikasi Terhubung',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'NEW',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),

              SizedBox(height: 16),

             
              Text(
                'Bantuan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ListTile(
                leading: Icon(Icons.help, color: Colors.black),
                title: Text('Pusat Bantuan',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.chevron_right),
              ),

              SizedBox(height: 16),

             
              Text(
                'Keamanan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),

      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4, // 4 = Profile
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF4C2A9B),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            // kembali ke halaman Home
            Navigator.pop(context);
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: 'Finance'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Pay'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
