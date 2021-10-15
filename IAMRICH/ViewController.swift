//
//  ViewController.swift
//  IAMRICH
//
//  Created by ed on 10/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var widthLabel: UILabel!
    
    @IBOutlet weak var witdhSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        print(sender.value)
        heightLabel.text =  String(format: "%.2f", sender.value * 100)
    }
    
    @IBOutlet weak var ResLabel: UILabel!
    @IBAction func widthSlider(_ sender: UISlider) {
        print(sender.value)
        widthLabel.text =  String(format: "%.2f", sender.value * 100)
    }
    @IBAction func CalculateActionButton(_ sender: UIButton) {
        let w = witdhSlider.value
        let h = heightSlider.value
        
        let res = w / (w * h)
        
        if(res != 0)
        {
            ResLabel.text = String(format: "%.2f", res * 100)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        witdhSlider.value = 0.0
        heightSlider.value = 0.0
        widthLabel.text =  String(format: "%.2f", witdhSlider.value * 100)
        heightLabel.text =  String(format: "%.2f", heightSlider.value * 100)
        
    }


}

