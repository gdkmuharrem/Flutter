import 'package:collectionsyapisi/4-)List_Nesne_Calismasi/Ogrenciler.dart';

void main(){
// Bu örnekteki amacımız list yapısı ile nesne programlamayı birleştrimek.

  //Classımıza o1,o2,o3 nesnelerimizi tanımladık ve değişkenlerin değerlerini girdik.
  var o1 = Ogrenciler(100, "Muharrem", "UNİ-2");
  var o2 = Ogrenciler(101, "Ahmet", "LİSE-MEZUN");
  var o3 = Ogrenciler(102, "Zeynep", "7-F");

  // ogrenciler isimli bir liste oluşturduk ve içerisinde tutacağı veri türüne classımızı yazdık.
  // Bu sayede classımızın nesnelerinin tanımları int,String tarzı değilde classımız ile tanımlı olduğu için
  // listmeizin elemanlarına classımızın nesnelerini ekleyebildik.
  // Bu sayede list yapısıyla nesne programlamayı birleştirmiş olduk.
  var ogrenciler = <Ogrenciler>[o1,o2,o3];

  //Şimdi bu listenin elemanlarının değişkenlerini ekrana basacağız.
  for (var o in ogrenciler){
    print("**********");
    print("Öğrenci no : ${o.no}");
    print("Öğrenci ad : ${o.ad}");
    print("Öğrenci sınıf : ${o.sinif}");
  }

}
