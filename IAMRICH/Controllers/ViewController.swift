//
//  ViewController.swift
//  IAMRICH
//
//  Created by ed on 10/13/21.
//

import UIKit

class ViewController: UIViewController {

    var bmiValue = "0.0"
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var widthLabel: UILabel!
    
    @IBOutlet weak var witdhSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var ResLabel: UILabel!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        print(sender.value)
        heightLabel.text =  String(format: "%.2f", sender.value * 100)
    }
    
    @IBAction func widthSlider(_ sender: UISlider) {
        print(sender.value)
        widthLabel.text =  String(format: "%.2f", sender.value * 100)
    }
    
    @IBAction func CalculateActionButton(_ sender: UIButton) {
        let w = witdhSlider.value
        let h = heightSlider.value
        
        let res = w / (w * h)
        
        if(res > 0)
        {
            bmiValue = String(format: "%.1f", res)
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }else
        {
            ResLabel.text = String(format: "%.2f", res * 100)
            let secondVC = SecondViewController()
            self.present(secondVC, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "goToResult"{
            let destination = segue.destination as! CocaViewViewController
            destination.bmiVal = bmiValue
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        witdhSlider.value = 0.0
        heightSlider.value = 0.0
        widthLabel.text =  String(format: "%.2f", witdhSlider.value * 100)
        heightLabel.text =  String(format: "%.2f", heightSlider.value * 100)
        ResLabel.text = "0.0"
    }


}

