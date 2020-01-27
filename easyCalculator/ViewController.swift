//
//  ViewController.swift
//  easyCalculator
//
//  Created by 趙林 on 2020/01/24.
//  Copyright © 2020 ZHAO LIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfX: UITextField!
    @IBOutlet weak var segCalcType: UISegmentedControl!
    @IBOutlet weak var tfY: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapCalc(_ sender: Any) {
        
        var x:Double! = Double(tfX.text!)
        if(x == nil){
            tfX.text = "0"
            x = 0
        }
        
        var y:Double! = Double(tfY.text!)
        if(y == nil){
            tfY.text = "0"
            y = 0
        }
        var result:Double! = 0
        
        if(segCalcType.selectedSegmentIndex == 0){
            result = x+y
        }
        else if(segCalcType.selectedSegmentIndex == 1){
            result = x-y
        }
        else if(segCalcType.selectedSegmentIndex == 2){
            result = x*y
        }
        else if(segCalcType.selectedSegmentIndex == 3){
            result = x/y
        }
    labelResult.text = String(result)
        tfX.resignFirstResponder()
        tfY.resignFirstResponder()

}
}

