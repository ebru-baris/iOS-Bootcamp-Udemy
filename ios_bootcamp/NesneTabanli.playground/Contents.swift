import UIKit

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){
        print("Boş init methodu çalıştı.")
    }
    
    init(renk:String,hiz:Int,calisiyorMu:Bool){
        self.renk = renk  //self : bulunduğu sınıfı temsil ediyor
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu // Shadowing : gölgeleme
        print("Dolu init methodu çalıştı.")
    }
    
    func calistir() {//Side Effect
        calisiyorMu = true
        hiz = 5
    }
    
    func hizlan(kacKm:Int) {
        hiz! += kacKm // hiz = hiz + kacKm
    }
    
    func yavasla(kacKm:Int) {
        hiz! -= kacKm // hiz = hiz - kacKm
    }
    
    func durdur() {
        calisiyorMu = false
        hiz = 0
    }
    
    func bilgiAl(){
        print("---------------------------")
        print("Renk          : \(renk!)")
        print("Hız           : \(hiz!)")
        print("Çalışıyor mu? : \(calisiyorMu!)")
    }
}

//Nesne Oluşturma
//var bmw = Araba()
var bmw = Araba(renk: "Kırmızı", hiz: 100, calisiyorMu: true)

//Değer atama

//bmw.renk = "Kırmızı"
//bmw.hiz = 150
//bmw.calisiyorMu = true

//Değer okuma
/*
print("---------------------------")
print("Renk          : \(bmw.renk!)")
print("Hız           : \(bmw.hiz!)")
print("Çalışıyor mu? : \(bmw.calisiyorMu!)")
 */

bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 50)
bmw.bilgiAl()
bmw.yavasla(kacKm: 20)
bmw.bilgiAl()

var sahin = Araba()

sahin.renk = "Beyaz"
sahin.hiz = 0
sahin.calisiyorMu = false
/*
print("---------------------------")
print("Renk          : \(sahin.renk!)")
print("Hız           : \(sahin.hiz!)")
print("Çalışıyor mu? : \(sahin.calisiyorMu!)")
*/

sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()
sahin.durdur()
sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()
sahin.hizlan(kacKm: 70)
sahin.bilgiAl()
sahin.yavasla(kacKm: 40)
sahin.bilgiAl()



class Fonksiyonlar {
    //Geri dönüş değeri olmayan ( void )
    func selamla1() {
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    //Geri dönüş değeri olan ( return )
    func selamla2() -> String {
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    
    //Parametre
    func selamla3(isim:String) {
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    func toplama(sayi1:Int,sayi2:Int) -> Int {
        let toplam = sayi1 + sayi2
        return toplam
    }
    
    //Overloading
    func carpma(sayi1:Int,sayi2:Int) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Double,sayi2:Double) {
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int,sayi2:Int,isim:String) {
        print("Çarpma: \(sayi1 * sayi2) - İşlemi yapan : \(isim)")
    }
    

}

let f = Fonksiyonlar()

f.selamla1()
let gelenSonuc = f.selamla2()
print("Gelen Sonuç : \(gelenSonuc)")

f.selamla3(isim: "Zeynep")

let gelenToplam = f.toplama(sayi1: 10, sayi2: 20)
print("Gelen Toplam : \(gelenToplam)")


f.carpma(sayi1: 10, sayi2: 20)

f.carpma(sayi1: 20, sayi2: 6, isim: "Zeynep")

//Static değişkenler ve methodlar
class ASinifi {
    static var x = 10
    
    static func metod() {
        print("Metod çalıştı")
    }
}
let a = ASinifi()

/* print(a.x)
a.metod()

print(ASinifi().x) //Sanal nesne - virtual object - isimsiz nesne

ASinifi().metod() */
print(ASinifi.x)
ASinifi.metod()

//Enumeration

enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut:KonserveBoyut,adet:Int){
    switch boyut {
    case .kucuk: print("Fİyat : \(adet * 13) ₺")
    case .orta: print("Fİyat : \(adet * 24) ₺")
    case .buyuk: print("Fİyat : \(adet * 45) ₺")

    }
}

ucretHesapla(boyut: .orta, adet: 100)

//Composition
class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int,kategori_ad:String){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int,yonetmen_ad:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:Int,film_ad:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler){
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let kategori1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let kategori2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")

let yonetmen1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let yonetmen2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")
let yonetmen3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Nuri Bilge Ceylan")

let film1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: kategori1, yonetmen: yonetmen1)


print("Film Id       : \(film1.film_id!)")
print("Film Adı      : \(film1.film_ad!)")
print("Film Yılı     : \(film1.film_yil!)")
print("Film Kategori : \(film1.kategori!.kategori_ad!)")
print("Film Yönetmen :\(film1.yonetmen!.yonetmen_ad!)")
