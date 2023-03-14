/*
  HomeWork-2
  ----------
  2.Kenarları parametre olarak girilen ve dikdörtgenin çevresini hesaplayan bir method yazınız.
  ----------
*/
import 'dart:io';

void main (){
  print("----------------------------------------------");
  print("Dikdörtgen Çevre Hesabı Botumuza Hoş Geldiniz.");
  print("----------------------------------------------");
  print("Lütfen çevresini hesaplamak istediğiniz dikdörtgenin kenarlarını giriniz.");
  print("Uzun kenar : ");
  int uznknr = int.parse(stdin.readLineSync()!);
  print("Kısa kenar : ");
  int ksknr = int.parse(stdin.readLineSync()!);
  cevre(uznknr,ksknr);
}

void cevre(int uznknr, int ksknr){
  int sonuc = uznknr*2+ksknr*2;
  print("Dikdörtgenin Çevresi : $sonuc");
}
