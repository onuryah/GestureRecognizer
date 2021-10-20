//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Ceren Çapar on 22.09.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    var ahmet : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func changeImage() {
        if ahmet == true {
        imageView.image = UIImage(named: "billie")
        textLabel.text = "Billie Ellish"
        ahmet = false
        }else{
        imageView.image = UIImage(named: "ammy")
        textLabel.text = "Ammy Lee"
        ahmet = true
        }
    }
}

