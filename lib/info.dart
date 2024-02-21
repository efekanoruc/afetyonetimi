import 'package:flutter/material.dart';


class DisasterInfoPage extends StatelessWidget {
  final String disasterType;

  const DisasterInfoPage({super.key, required this.disasterType});

  @override
  Widget build(BuildContext context) {
    String infoText = '';

    // Afet türüne göre bilgilendirme metnini ayarlayın
    switch (disasterType) {
      case 'Deprem':
        infoText =
        'Deprem, yer kabuğundaki enerjinin aniden serbest bırakılmasıyla meydana gelen sismik bir olaydır. '
            'Deprem anında panik yapmayın ve sakin olun. Kontrolü kaybederseniz her şey zorlaşır. Güvenli bir yere kaçın. Mümkünse, kapı kenarlarına, masalara sığının ve sarsıntı durana kadar o bölgede kalın.'
            ' Asansör yerine merdivenleri tercih edin. İçerideyseniz, dışarı çıkın, açık alanda güvende olma şansınız daha yüksek. '
            'Eğer çıkamazsanız, başınızı ellerinizle veya bir yastıkla koruyun ve düşebilecek nesnelerden uzak durun. Deprem anında telefon hatları yoğun olabilir. '
            'Sadece acil durumlar için telefonunuzu kullanın. Dezenformasyon bilgilere itibar etmeyin. Yalnızca resmi kaynakların bildirisine odaklanın.'
            'Acil durum çantalarınızı hazır tutun ve içinde başlıca su, yiyecek, ilaçlar, el feneri ve düdük yerleştirin.';





        break;
      case 'Sel':
        infoText =
        'Sel, normalde kuru olan bir yerin, yoğun yağış veya buzların erimesi sonucu su ile kaplanmasıdır.';
        break;
      case 'fırtına':
        infoText =
        'Fırtına, şiddetli rüzgarlarla karakterize olan hava olayıdır ve genellikle hasara neden olabilir.';
        break;
    // Diğer afet türlerine yönelik bilgilendirme metinlerini buraya ekleyebilirsiniz.
      default:
        infoText = 'Bu afet türü için bilgi bulunamadı.';
    }

    Widget imageWidget = disasterType == 'Deprem' ? Image.asset(
      'images/deprem.jpg', // Görselin yolunu belirtin
      width: 190, // Görselin genişliğini ayarlayın
      height: 190, // Görselin yüksekliğini ayarlayın
      fit: BoxFit.cover, // Görselin boyutunu ayarlayın
    ) : SizedBox(); // Sel veya diğer afet türlerinde görsel göstermek için SizedBox kullandık

    return Scaffold(
      appBar: AppBar(
        title: Text('$disasterType Bilgilendirme'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
        child: Column(
        children: <Widget>[
        imageWidget, // Görseli ekleyin
        SizedBox(height: 20),
        Text(
            infoText,
            style: const TextStyle(fontSize: 18.0),
          ),
        ]),
      ),
    ));
  }
}
