//
//  SecondViewController.swift
//  IAMRICH
//
//  Created by ed on 10/17/21.
//

import Foundation
import UIKit

class SecondViewController : UIViewController
{
    
    //second view controller
    override func viewDidLoad() {
        
      
        super.viewDidLoad()
        let label1 = UILabel()
        label1.text = "No values 💀"
        label1.backgroundColor = .systemPink
        label1.textColor = .white
        label1.frame = CGRect(x: 10, y: 10, width: 100, height: 20)
        view.backgroundColor = .purple
        view.addSubview(label1)
    }
}
