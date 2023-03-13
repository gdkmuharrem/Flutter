import 'Classes/Bus-Example/Otobus.dart';

void main(){

  var kamilkoc = Otobus();
  kamilkoc.kapasite = 120;
  kamilkoc.mevcut = 25;
  kamilkoc.nereden = "İstanbul";
  kamilkoc.nereye = "Düzce";

  kamilkoc.bilgiAl();
  print("---------------------------");
  kamilkoc.yolcuAl(12);
  kamilkoc.bilgiAl();
  print("---------------------------");
  kamilkoc.yolcuBirak(23);
  kamilkoc.bilgiAl();
  print("---------------------------");

  //yeni bir nesne
  var pamukkale =Otobus();
  pamukkale.mevcut = 3;
  pamukkale.kapasite = 5;
  pamukkale.nereden = "Üçyüzlü";
  pamukkale.nereye = "Dörtyol";

  pamukkale.bilgiAl();
  print("---------------------------");
  pamukkale.yolcuAl(2);
  pamukkale.bilgiAl();
  print("---------------------------");
  pamukkale.yolcuBirak(4);
  pamukkale.bilgiAl();
  print("---------------------------");


}
