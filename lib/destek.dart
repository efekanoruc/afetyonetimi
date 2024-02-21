import 'package:flutter/material.dart';

class AfetDestegiPage extends StatefulWidget {
  const AfetDestegiPage({Key? key}) : super(key: key);

  @override
  State<AfetDestegiPage> createState() => _AfetDestegiPageState();
}

class _AfetDestegiPageState extends State<AfetDestegiPage> {
  String _destekBolgesi = '';
  String _destekTuru = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Afet Bölgesine Destek'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hangi bölgeye destekte bulunmak istiyorsunuz?',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Bölge adı girin',
              ),
              onChanged: (newValue) {
                setState(() {
                  _destekBolgesi = newValue;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Desteğinizin türü nedir?',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: const Text('Maddi'),
              leading: Radio(
                value: 'Maddi',
                groupValue: _destekTuru,
                onChanged: (value) {
                  setState(() {
                    _destekTuru = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Eşya'),
              leading: Radio(
                value: 'Eşya',
                groupValue: _destekTuru,
                onChanged: (value) {
                  setState(() {
                    _destekTuru = value.toString();
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _saveSupport,
                child: const Text('Destek Gönder'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _saveSupport() {
    // Burada destek bilgilerinin kaydedilmesi işlemleri yapılabilir
    print('Destek bilgileri kaydedildi');
    print('Destek Verilen Bölge: $_destekBolgesi');
    print('Destek Türü: $_destekTuru');
  }
}
