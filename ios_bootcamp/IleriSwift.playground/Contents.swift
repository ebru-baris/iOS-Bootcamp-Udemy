import UIKit

// if değeri true olan

func kisiTanima1(ad:String){
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
    }else{
        print("Tanınmayan Kişi")
    }
}

kisiTanima1(ad: "Ahmet")

//Guard değeri false olan

func kisiTanimlama2(ad:String){
    guard ad == "Ahmet" else {
        print("Tanınmayan Kişi")
        return
    }
    print("Merhaba Ahmet")
}

kisiTanimlama2(ad: "Ahmetx")

//Hata Ayıklama
//1.Compile Error : Editör Hataları

//let x = 10
//x= 40

//2.Runtime Error : Exception : Çalışmasırasında oluşan hatalar

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int,sayi2:Int) throws -> Int {
    if sayi2 == 0{
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}

do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi {
    print("Sayı sıfıra bölünemez")
}

let sonuc1 = try? bolme(sayi1: 10, sayi2: 5) //Eğer hata olursa sonuc nil olur

if let temp = sonuc1 {
    print(temp)
}else{
    print("Sayı sıfıra bölünemez")
}
