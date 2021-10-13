//
//  ViewController.swift
//  IAMRICH
//
//  Created by ed on 10/13/21.
//

import UIKit

class ViewController: UIViewController {

         
    @IBOutlet weak var imageViewOne: UIImageView!
    
    @IBOutlet weak var imageViewTwo: UIImageView!
    
    
    @IBAction func rollActionBtn(_ sender: Any) {
        
        print("Btn pressed")
        let number = Int.random(in: 1..<7)
        let number2 = Int.random(in: 1..<7)
        
        imageViewOne.image =  UIImage(named: String(number))
        imageViewTwo.image =  UIImage(named: String(number2))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        imageViewOne.image =  UIImage(named: "2")
        imageViewTwo.image =  UIImage(named: "1")
        
        
        
    }


}

