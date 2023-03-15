void main(){

  // LİSTE TANIMLAMA YÖNTEMLERİ
  var iller = <String>["Murrem","Gedo","Mervo","Gedo","Birbirlerini","Seviyolar"];
  var plakalar = [34,69,61];

  var meyveler = <String>[];

  /*
    VERİ EKLEME YÖNTEMLERİ : add, insert
  */
  meyveler.add("Muz"); //0.index
  meyveler.add("Kiraz"); //1.index
  meyveler.add("Çilek"); //2.index
  meyveler.add("Karpuz"); //3.index
  meyveler.add("Elma"); //4.index
  meyveler.add("Kivi"); //5.index

  print(meyveler); // Listenin içeriğini ekrana basar fakat bu üzerinde çalışabileceğimiz bir içerik değil.

  meyveler.add("Mandalina"); // Listemize yeni bir değer ekliyoruz. // 6.index
  print(meyveler); // add() fonksiyonu her zaman listenin en sonuna ekleme yapar.

  meyveler[2] = "Ananas"; // 2.indexteki değeri bu değer ile değiştiriyoruz.
  print(meyveler);

  meyveler.insert(3, "Kavun"); // insert ile istediğimiz indexe ekeleme yapabiliyoruz ve o indexteki eleman bir sonrakine aktarılıyor.
  print(meyveler);

  /*
    VERİ OKUMA YÖNTEMLERİ :
  */
  String str = meyveler[0]; // Okumak istediğimiz index değerini bir değişkene aktarıyoruz.
  print(str); // İstersek artık bu değeri ekrana basabilir istersek üzerinde işlem yapabiliriz.

  print(meyveler[2]); // Eğer değeriyle oynamayıp sadece ekrana basmak istersek bu şekilde ekrana basabiliriz.
  //Değişkene almak zorunda değiliz.

}
