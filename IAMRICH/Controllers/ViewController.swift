//
//  ViewController.swift
//  IAMRICH
//
//  Created by ed on 10/13/21.
//

import UIKit

class ViewController: UIViewController {

    var bmiValue = "0.0"
    var calculator = CalculatorBrain()
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
                        
        if(w > 0.0 && h > 0.0)
        {
            calculator.calculateBMI(height: h, weight: w)
            ResLabel.text = "Last calculation \(calculator.getBMIValue())"
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }else
        {
            ResLabel.text = "No value 💀"
            let secondVC = SecondViewController()
            self.present(secondVC, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "goToResult"{
            let destination = segue.destination as! CocaViewViewController
            destination.bmiVal  = calculator.getBMIValue()
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

