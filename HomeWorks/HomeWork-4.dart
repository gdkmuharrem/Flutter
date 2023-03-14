/*
  HomeWork-4
  ----------
  4.Parametre olarak girilen kelime ve harf için harfin kelime içinde kaç adet olduğunu gösteren method yazınız.
  ----------
*/
import 'dart:io';

void main(){

  print("Kelime İçinde Harf Bulma Botumuza Hoş Geldiniz.");
  print("Lütfen bir kelime giriniz : ");
  String kelime = stdin.readLineSync()!;
  print("Lütfen aramak istediğiniz harfi giriniz");
  String harf = stdin.readLineSync()!;
  arama(kelime,harf);

}

void arama(String kelime,String harf){
  int sayac = 0;
  for(int i =0; i<kelime.length;i++){
    if(kelime[i]==harf){
      sayac++;
    }
  }
  if(sayac>0){
    print("Aradığınız harf kelimenin içinde $sayac adet var.");
  }
  else{
    print("Aradığınız harf kelimenin içinde yok!");
  }

}
