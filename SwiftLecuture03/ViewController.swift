//
//  ViewController.swift
//  SwiftLecuture03
//
//  Created by stu1 on 2018/7/22.
//  Copyright © 2018年 miao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbName: UILabel!

    @IBOutlet weak var touchView: UIView!
    
    @IBOutlet weak var switchStatus: UISwitch!
    
    @IBOutlet weak var addScoreStepper: UIStepper!
    
    @IBOutlet weak var scoreSlider: UISlider!
    
    
    @IBAction func btnConfirmClicked(_ sender: UIButton) {
       lbName.text = "changed!"
       sender.setTitle("OK", for: UIControl.State.normal)
       sender.setTitle("highlighted", for: UIControl.State.highlighted)
       sender.setTitle("focused", for: UIControl.State.focused)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreSlider.value = 0
        scoreSlider.minimumValue=0
        scoreSlider.maximumValue=100
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
        if let touch = touches.first{
           let loc = touch.location(in:self.touchView )
           print("\(loc)")
           if(self.touchView.bounds.contains(loc)){
                    self.touchView.backgroundColor = UIColor.red
            }else{
                    self.touchView.backgroundColor = UIColor.blue
            }
        }
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchensEnded")
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        print("\(addScoreStepper.value)")
        scoreSlider.setValue(Float(addScoreStepper.value), animated: false)
        
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
    }
    
    
}

