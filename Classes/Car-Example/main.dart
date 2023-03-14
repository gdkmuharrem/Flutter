import 'package:nesnetabanli/Araba.dart';

void main(){

  var bmw = Araba();
  //Değer atama
  bmw.calisiyormu = true;
  bmw.renk = "mavi";
  bmw.hiz = 200;

  //Değer okuma
  print(bmw.renk);
  print(bmw.hiz);
  print(bmw.calisiyormu);

  bmw.bilgiAl();

  bmw.calistir();
  bmw.bilgiAl();
  bmw.durdur();
  bmw.bilgiAl();

  print("------HIZLANMA--------");

  bmw.hizlan(142);
  bmw.bilgiAl();

  print("--------YAVAŞLAMA--------");

  bmw.yavasla(32);
  bmw.bilgiAl();

//Yeni nesne oluşturma:
  print("***********************");
  var limuzin = Araba();
  limuzin.renk = "siyah";
  limuzin.hiz = 30;
  limuzin.calisiyormu = true;

  limuzin.bilgiAl();
  print("------------HIZLANMA---------");
  limuzin.hizlan(55);
  limuzin.bilgiAl();
  print("--------YAVASLAMA-----------");
  limuzin.yavasla(15);
  limuzin.bilgiAl();
}
