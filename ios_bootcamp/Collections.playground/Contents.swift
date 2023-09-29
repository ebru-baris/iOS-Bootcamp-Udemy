import UIKit

//Array Kullanımı

var numaralar = [10,20,30]
var meyveler = [String]()

//Veri Ekleme
meyveler.append("Elma") //0.
meyveler.append("Muz") //1.
meyveler.append("Kiraz") //2.
print(meyveler)

//Güncelleme
meyveler[0] = "Yeni Elma"
print(meyveler)

//Insert
meyveler.insert("Portakal", at: 1)
print(meyveler)

//Veri Okuma
print(meyveler[2])
let m = meyveler[0]
print(m)

print("Boyut : \(meyveler.count)")
print("Boş kontrol : \(meyveler.isEmpty)")

for meyve in meyveler {
    print("Sonuç 1 : \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated() {
    print("\(indeks). -> \(meyve)")
}

meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)

print(meyveler.count)


class Ogrenciler {
    
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String){
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var ogrenci1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var ogrenci2 = Ogrenciler(no: 300, ad: "Ahmet", sinif: "11Z")
var ogrenci3 = Ogrenciler(no: 100, ad: "Beyza", sinif: "12A")

var ogrencilerListesi = [Ogrenciler]()

ogrencilerListesi.append(ogrenci1)
ogrencilerListesi.append(ogrenci2)
ogrencilerListesi.append(ogrenci3)

for ogrenci in ogrencilerListesi {
    print("No : \(ogrenci.no!) - Ad : \(ogrenci.ad!) - Sınıf : \(ogrenci.sinif!)")
}

//Filtreleme

var filtre1 = ogrencilerListesi.filter({$0.no! > 100 && $0.no! < 250 })
print("Filtreleme 1")
for ogrenci in filtre1 {
    print("No : \(ogrenci.no!) - Ad : \(ogrenci.ad!) - Sınıf : \(ogrenci.sinif!)")
}


var filtre2 = ogrencilerListesi.filter({$0.ad!.contains("yz")})
print("Filtreleme 2")
for ogrenci in filtre2 {
    print("No : \(ogrenci.no!) - Ad : \(ogrenci.ad!) - Sınıf : \(ogrenci.sinif!)")
}


// Sıralama

var siralama1 = ogrencilerListesi.sorted(by: { $0.no! > $1.no! })
print("No için sayısal büyükten küçüğe sıralama ")
for ogrenci in siralama1 {
    print("No : \(ogrenci.no!) - Ad : \(ogrenci.ad!) - Sınıf : \(ogrenci.sinif!)")
}

var siralama2 = ogrencilerListesi.sorted(by: { $0.no! < $1.no! })
print("No için sayısal küçükten büyüğe sıralama ")
for ogrenci in siralama2 {
    print("No : \(ogrenci.no!) - Ad : \(ogrenci.ad!) - Sınıf : \(ogrenci.sinif!)")
}

var siralama3 = ogrencilerListesi.sorted(by: { $0.ad! > $1.ad! })
print("Ad için metinsel büyükten küçüğe sıralama ")
for ogrenci in siralama3 {
    print("No : \(ogrenci.no!) - Ad : \(ogrenci.ad!) - Sınıf : \(ogrenci.sinif!)")
}

var siralama4 = ogrencilerListesi.sorted(by: { $0.ad! < $1.ad! })
print("Ad için metinsel küçükten büyüğe sıralama ")
for ogrenci in siralama4 {
    print("No : \(ogrenci.no!) - Ad : \(ogrenci.ad!) - Sınıf : \(ogrenci.sinif!)")
}



