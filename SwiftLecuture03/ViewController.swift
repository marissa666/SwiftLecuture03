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
    
    @IBOutlet weak var btnConfirm: UIButton!
    
    @IBAction func btnConfirmClicked(_ sender: UIButton) {
        lbName.text = "changed!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

