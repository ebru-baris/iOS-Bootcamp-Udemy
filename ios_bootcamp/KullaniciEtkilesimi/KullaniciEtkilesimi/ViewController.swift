//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Ebru Barış on 2.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in print("İptal Seçildi")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in print("Tamam Seçildi")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in print("İptal Seçildi")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in print("Tamam Seçildi")
        }
        alertController.addAction(tamamAction)
        
        self.present(alertController, animated: true)
    }
    
    
    @IBAction func buttonOzelAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        //alertController.addTextField()
        
        alertController.addTextField { textfield in //0
            textfield.placeholder = "Veri Giriniz"
            textfield.keyboardType = .numberPad
            textfield.isSecureTextEntry = true
        }
        alertController.addTextField() //1
        
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .cancel) { action in 
            let textField = alertController.textFields![0] as UITextField
            let textField1 = alertController.textFields![1] as UITextField
            
            if let alinanVeri = textField.text, let alinanVeri1 = textField1.text {
                print("Veri : \(alinanVeri) - \(alinanVeri1)")
            }
        }
        
        alertController.addAction(kaydetAction)
        
        self.present(alertController, animated: true)
    }
    
}

