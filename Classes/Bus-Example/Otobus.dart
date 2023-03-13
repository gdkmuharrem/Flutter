class Otobus{

  late int kapasite;
  late String nereden;
  late String nereye;
  late int mevcut;

  void yolcuAl(int sayi){
    mevcut = mevcut+sayi;
  }
  void yolcuBirak (int sayi){
    mevcut = mevcut-sayi;
  }

  void bilgiAl(){
    print("Nereden : $nereden");
    print("Nereye : $nereye");
    print("Mevcut : $mevcut");
    print("Kapasite : $kapasite");
  }
}
