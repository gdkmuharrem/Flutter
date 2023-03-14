/*
  HomeWork-5
  ----------
  5.Parametre olarak girilen kenar sayısına göre iç açılar toplamını hesaplayan sonucu geri gönderen method yazınız.
      [Formül : n--> kenar sayısı  : (n-2)*180 ]
  ----------
*/
import 'dart:io';

void main(){

  print("--------------------------------------------------------");
  print("Üçgen İç Açılar Toplamını Hesaplama Botuna Hoş Geldiniz.");
  print("--------------------------------------------------------");
  print("İç açıları toplamını öğrenmek istediğiniz üçgenin kenar sayısını giriniz.");
  int kenar = int.parse(stdin.readLineSync()!);
  print(icAci(kenar));

}

int icAci(int kenar){
  int sonuc = (kenar-2)*180;
  return sonuc;
}
