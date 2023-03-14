/*
  HomeWork-7
  ----------
  7.Parametre olarak girilen kota miktarına göre ücreti hesaplayarak geri döndüren metodu yazınız.
      [50GB 100TL]
      [Kota aşımı sonrası her 1GB 4TL]
  ----------
*/
import 'dart:io';

void main (){
  print("------------------------------------------------");
  print("Kotaya Göre Ücret Hesaplama Botuna Hoş Geldiniz.");
  print("------------------------------------------------");
  print("Lütfen bu ay kullandığınız internet kotasını giriniz.");
  int kota = int.parse(stdin.readLineSync()!);
  print("Ödemeniz gereken tutar : ${hesap(kota)}");

}

int hesap (int kota){
  int sonuc = 0 ;
  if (kota<50){
    sonuc = 100;
  }
  if (kota>50){
    sonuc = 100+ (kota-50)*4;
  }
  return sonuc ;
}
