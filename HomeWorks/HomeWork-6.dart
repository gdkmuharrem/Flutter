/*
  HomeWork-6
  ----------,
  6.Parameter olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri geri döndüren method yazınız.
      [1 Günde 8 saat çalışılabilir.]
      [Çalışma saat ücreti : 10TL]
      [Mesai saat ücreti : 20TL]
      [160 saat üzeri mesai sayılır.]
  ----------
*/
import 'dart:io';

void main(){

  print("----------------------------------");
  print("Maaş Hesabı Botumuza Hoş Geldiniz.");
  print("----------------------------------");
  print("Lütfen bu ay kaç gün çalıştığınızı giriniz.");
  int gun = int.parse(stdin.readLineSync()!);
  if(maas(gun) !=0){
    print("Almanız gereken ödeme : ${maas(gun)}");
  }

}

int maas(int gun){
  int sonuc = 0;
  if (gun>31){print("Ters bir şeyler oldu. Bir ayda max 31 gün bulunmaktadır !!!");}
  if(gun>20 && gun<=31){sonuc = 20*8*10 + (gun-20)*8*20;}
  if(gun<20){sonuc = 10*8*gun;}
  return sonuc;
}
