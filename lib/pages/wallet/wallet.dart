import 'package:flutter/material.dart';

class wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dompet',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Image.asset(
                    'assets/images/wallet/walletcard.png',
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Balance',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '\$500.00',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.grey,
                thickness: 2,
                height: 20,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Aksi ketika tombol diklik
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                        icon: Icon(Icons.arrow_upward, color: Colors.black),
                        label: Text('Top Up'),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Aksi ketika tombol diklik
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                        icon: Icon(Icons.payment, color: Colors.black),
                        label: Text('Pay'),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: TransactionList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TransactionCard(
          title: 'Payment to John Doe',
          amount: '-\$50.00',
          date: 'Jan 15, 2022',
        ),
        TransactionCard(
          title: 'Deposit from Jane Smith',
          amount: '+\$100.00',
          date: 'Jan 10, 2022',
        ),
        // Add more TransactionCard widgets for additional transactions
      ],
    );
  }
}

class TransactionCard extends StatelessWidget {
  final String title;
  final String amount;
  final String date;

  TransactionCard(
      {required this.title, required this.amount, required this.date});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = amount.startsWith('-') ? Colors.red : Colors.green;

    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      color: backgroundColor,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          date,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: Text(
          amount,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
