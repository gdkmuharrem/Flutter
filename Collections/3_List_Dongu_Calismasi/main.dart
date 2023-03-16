void main(){

  // String veri yapılı bir liste oluşturduk ve ilk tanımda elemanlar atadık.
  var meyveler = <String>["Çilek","Muz","Elma","Kivi","Kiraz"];

  // Liste içerisinde for döngüsü ile geziyoruz ve tüm listeyi sırayla m değişkenine aktarıyoruz.
  for(var m in meyveler){
    print(m);
  }

  //Listedeki içeriklerin index numaralarını da almak istediğimizde aşağıdaki döngüyü kullanmamız gerekiyor.
  for(var i = 0;i<meyveler.length;i++){
    print("$i. indisli eleman : ${meyveler[i]}");
  }
  
}
