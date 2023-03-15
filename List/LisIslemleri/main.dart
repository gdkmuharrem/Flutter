void main(){

  // String veri yapılı bir liste oluşturduk.
  var meyveler = <String>[];

  // Oluşturduğumuz listeye ekleme yaptık.
  meyveler.add("Çilek");
  meyveler.add("Muz");
  meyveler.add("Kivi");
  meyveler.add("Elma");
  meyveler.add("Ananas");

  // isEmpty metodu bize kolaylık sağlayarak bir listenin dolu mu boş mu olduğunu sorgular ve true,false döndürür.
  print(meyveler.isEmpty);// Listemize ekleme yapıp doldurduğumuz için false döndürecektir.

  //length metodu bize listemizin içerisindeki elemanların sayısını verir.
  print(meyveler.length);

  print(meyveler.first); // first metodu listemizin ilk elemanını geri döndürür.

  print(meyveler.last); // last metodu listemizin son elemanını geri döndürür.

  // contains metodu bize listemizin içerisinde olup olmadığını merak ettiğimiz elemanı arar ve
  print(meyveler.contains("Elma")); // eğer listede varsa "true" , yoksa "false" değerini döndürür.

  // reversed metodu listemizi ters çevirir yani değerlerimiz 0,1,2,3 ise reversed metodu ile
  print(meyveler.reversed);// 3,2,1,0 olur.

  // sort() metodumuzu print işlemi içerisinde yapamamaktayız. Bu metodumuzun amacı listemizi sıralamak.
  meyveler.sort(); // Eğer listemiz String verilerden oluşuyorsa alfabeye göre sıralama yapar.
  print(meyveler); // Eğer listemiz sayılardan oluşuyorsa ona göre bir sıralama yapar.

  // removeAt(index) metodumuz listeden istediğimiz indexe sahip elemanımızı silmemize yarar.
  meyveler.removeAt(2); // Bu metodumuzuda ilk olarak çalıştırıp daha sonra listeyi print edebiliriz.
  print(meyveler);

  //remove(elemanAdı) metodumuz listeden istediğimiz elemanı silmemize yarar.
  // Bu metotta dikkat etmemiz gereken listenin içerisinde silmek istediğimiz elemandan birden fazla varsa
  // Bu metod ile hepsini siler.
  meyveler.remove("Muz"); // Bu metodumuzu ilk olarak çalıştırıp sonra print edebiliriz.
  print(meyveler);

  // clear() metodumuz listemizin içeriğini tamamen temizleyebiliriz.
  meyveler.clear(); // Bu metodumuzda da ilk önce işlemi yapıp sonra ekrana basabiliriz.
  print(meyveler);

}
