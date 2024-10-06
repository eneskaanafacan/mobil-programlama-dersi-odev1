import 'models/ogrenci.dart';

List<Ogrenci> ogrenciler = [];

void main(List<String> args) {
  //ornek kullanım

  Ogrenci ogrenci1 = Ogrenci('Kaan', 'Afacan', [30,45,78]);
  ogrenciler.add(ogrenci1);

  //print (ogrenci1.ortalamaHesapla());
  print(ogrenci1.toString());
  ogrenci1.notEkle(57);
  print(ogrenci1.toString());
  
}
