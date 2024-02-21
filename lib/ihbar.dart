import 'package:flutter/material.dart';

class AcilIhbarPage extends StatefulWidget {
  const AcilIhbarPage({Key? key}) : super(key: key);

  @override
  State<AcilIhbarPage> createState() => _AcilIhbarPageState();
}

class _AcilIhbarPageState extends State<AcilIhbarPage> {
  bool sesKaydiSecildi = false;
  bool videoSecildi = false;
  bool metinSecildi = false;
  List<String> durumlar = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acil İhbar'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Acil İhbar Türü:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: const Text('Ses Kaydı'),
              value: sesKaydiSecildi,
              onChanged: (newValue) {
                setState(() {
                  sesKaydiSecildi = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Video'),
              value: videoSecildi,
              onChanged: (newValue) {
                setState(() {
                  videoSecildi = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Metin'),
              value: metinSecildi,
              onChanged: (newValue) {
                setState(() {
                  metinSecildi = newValue!;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Durumunuz nedir?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CheckboxListTile(
              title: const Text('Enkaz altındayım'),
              value: durumlar.contains('Enkaz altındayım'),
              onChanged: (newValue) {
                setState(() {
                  if (newValue!)
                    durumlar.add('Enkaz altındayım');
                  else
                    durumlar.remove('Enkaz altındayım');
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Enkazda/afetten etkilenen birini gördüm'),
              value: durumlar.contains('Enkazda/afetten etkilenen birini gördüm'),
              onChanged: (newValue) {
                setState(() {
                  if (newValue!)
                    durumlar.add('Enkazda/afetten etkilenen birini gördüm');
                  else
                    durumlar.remove('Enkazda/afetten etkilenen birini gördüm');
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Yağmacılık/Afet durumundan yararlanıp toplumun güvenliğini tehdit etme'),
              value: durumlar.contains('Yağmacılık/Afet durumundan yararlanıp toplumun güvenliğini tehdit etme'),
              onChanged: (newValue) {
                setState(() {
                  if (newValue!)
                    durumlar.add('Yağmacılık/Afet durumundan yararlanıp toplumun güvenliğini tehdit etme');
                  else
                    durumlar.remove('Yağmacılık/Afet durumundan yararlanıp toplumun güvenliğini tehdit etme');
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Acil sağlık ekibi talebi'),
              value: durumlar.contains('Acil sağlık ekibi talebi'),
              onChanged: (newValue) {
                setState(() {
                  if (newValue!)
                    durumlar.add('Acil sağlık ekibi talebi');
                  else
                    durumlar.remove('Acil sağlık ekibi talebi');
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Burada gönderme işlemi yapılabilir
                // Örneğin: sesKaydiSecildi, videoSecildi, metinSecildi ve durumlar listesi kullanarak veriler gönderilebilir.
              },
              child: const Text('Gönder', textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
