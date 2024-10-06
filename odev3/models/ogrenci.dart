class Ogrenci {
  late final String _isim;
  late final String _soyAd;
  List<int> _notlar = [];

  Ogrenci(this._isim, this._soyAd, this._notlar);

  String get isim => _isim;
  set isim(String deger) => _isim = deger;

  String get soyAd => _soyAd;
  set soyAd(String deger) => _soyAd = deger;

  List<int> get notlar => _notlar;

  void notEkle(int not) {
    _notlar.add(not);
  }

  double ortalamaHesapla() =>
      (this._notlar.reduce((sum, index) => sum + index)) / this._notlar.length;

  @override
  String toString() {
    // TODO: implement toString
    return '${_isim} ${_soyAd}, notları: ${_notlar}, not ortalaması: ${ortalamaHesapla()}';
  }
}