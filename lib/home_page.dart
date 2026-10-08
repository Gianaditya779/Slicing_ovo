import 'package:flutter/material.dart';
import 'profile_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9B8F0), // ungu muda
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'OVO',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C2A9B),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFB9A5EA),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.percent, color: Color(0xFF4C2A9B)),
                          SizedBox(width: 8),
                          Text(
                            'Promo',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C2A9B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF6C4FD3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OVO Cash',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Total Saldo',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tap untuk lihat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'OVO Points >',
                            style: TextStyle(
                              color: Color(0xFF4C2A9B),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.add_circle_outline, color: Colors.white),
                            SizedBox(height: 4),
                            Text('Top Up',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.arrow_circle_up, color: Colors.white),
                            SizedBox(height: 4),
                            Text('Transfer',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.download, color: Colors.white),
                            SizedBox(height: 4),
                            Text('Tarik Tunai',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.list_alt, color: Colors.white),
                            SizedBox(height: 4),
                            Text('History',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

             
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.stars,
                                  size: 40, color: Colors.deepPurple),
                              SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  'Cek data kamu demi kelancaran pemakaian akun OVO Premier kamu',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF4C2A9B),
                                foregroundColor: Colors.white,
                              ),
                              child: Text('Cek'),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    // Tab kategori
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 14, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Favorit',
                            style: TextStyle(
                              color: Color(0xFF4C2A9B),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text('Finansial',
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 16),
                        Text('Hiburan', style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 16),
                        Text('Pilihan Lain',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),

                    SizedBox(height: 20),

                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MenuItem(
                            icon: Icons.savings,
                            judul: 'Nabung by\nSuperbank',
                            warna: Colors.purple),
                        MenuItem(
                            icon: Icons.request_quote,
                            judul: 'Pinjaman',
                            warna: Colors.deepPurple),
                        MenuItem(
                            icon: Icons.credit_card,
                            judul: 'Uang\nElektronik',
                            warna: Colors.orange),
                        MenuItem(
                            icon: Icons.receipt_long,
                            judul: 'Angsuran\nKredit',
                            warna: Colors.pink),
                      ],
                    ),

                    SizedBox(height: 20),

                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MenuItem(
                            icon: Icons.phone_android,
                            judul: 'Pulsa/Paket\nData',
                            warna: Colors.blue),
                        MenuItem(
                            icon: Icons.bolt,
                            judul: 'PLN',
                            warna: Colors.amber),
                        MenuItem(
                            icon: Icons.water_drop,
                            judul: 'Air PDAM',
                            warna: Colors.lightBlue),
                        MenuItem(
                            icon: Icons.tv,
                            judul: 'Internet &\nTV Kabel',
                            warna: Colors.deepOrange),
                      ],
                    ),

                    SizedBox(height: 20),

                    
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          'Cairkan Dana',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // 0 = Home
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF4C2A9B),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 4) {
            
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
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

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String judul;
  final Color warna;

  MenuItem({required this.icon, required this.judul, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: warna.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: warna),
        ),
        SizedBox(height: 8),
        Text(
          judul,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
