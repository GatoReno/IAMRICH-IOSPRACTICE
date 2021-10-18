//
//  CocaViewViewController.swift
//  IAMRICH
//
//  Created by ed on 10/17/21.
//

import UIKit

class CocaViewViewController: UIViewController {

    var bmiVal : String?
    @IBOutlet weak var AmountLabel: UILabel!
    @IBOutlet weak var AdviseLabel: UILabel!
    
    @IBAction func RecalciulateAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AmountLabel.text = bmiVal
        
        
    }
    
  
}
