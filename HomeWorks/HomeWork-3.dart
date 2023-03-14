/*
  HomeWork-3
  ----------
  3.Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren method yazınız.
  ----------
*/
import 'dart:io';

void main (){

  print("-------------------------------------------");
  print("Faktoriyel Hesaplama Botumuza Hoş Geldiniz.");
  print("-------------------------------------------");
  print("Lütfen faktoriyelini hesaplamak istediğiniz sayıyı giriniz.");
  int sayi = int.parse(stdin.readLineSync()!);
  faktoryelhesap(sayi);

}

void faktoryelhesap(int sayi){
  int faktoryel = 1;

  for(int i = 2;i<=sayi;i++){
    faktoryel *= i;
  }
  print("Sayınızın Faktoriyeli : $faktoryel");
}
