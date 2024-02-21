import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String about = '';
  String phoneNumber = '';
  String location = '';
  int age = 0;
  String bloodType = '';
  String gender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileItem('Hakkında', Icons.person, about),
            _buildProfileItem('Telefon Numarası', Icons.phone, phoneNumber),
            _buildProfileItem('Konum', Icons.location_on, location),
            _buildProfileItem('Yaş', Icons.cake, age.toString()),
            _buildProfileItem('Kan Değeri', Icons.local_hospital, bloodType),
            _buildProfileItem('Cinsiyet', Icons.person_outline, gender),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _saveProfile,
                child: const Text('Kaydet'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(String label, IconData icon, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(
              label,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 5),
        TextFormField(
          initialValue: value,
          decoration: const InputDecoration(
            hintText: 'Değer girin',
          ),
          onChanged: (newValue) {
            setState(() {
              value = newValue;
            });
          },
        ),
        const Divider(height: 20, thickness: 1), // Bölümler arası çizgileri kaldırdık
      ],
    );
  }

  void _saveProfile() {
    // Profil bilgilerini kaydetmek için bu metodun içine gerekli kodları ekleyin
    // Örneğin, bir API'ye istek gönderip bilgileri kaydedebilirsiniz
    // Burada sadece konsola yazdırıyoruz
    print('Profil bilgileri kaydedildi');
  }
}
