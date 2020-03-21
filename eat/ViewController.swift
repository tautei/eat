//
//  ViewController.swift
//  eat
//
//  Created by monet-pro on 2020/3/21.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameinput: UITextField!
    @IBOutlet weak var heightinput: UISlider!
    @IBOutlet weak var footinput: UISegmentedControl!
    @IBOutlet weak var vagitableinput: UISwitch!
    @IBOutlet weak var showresault: UILabel!
    @IBOutlet weak var detailresault: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


    @IBAction func sendbutton(_ sender: Any) {
        
        //收鍵盤
        nameinput.resignFirstResponder()
        
        if nameinput.text == "" {
            showresault.text = "請填入恐龍名字"
            nameinput.layer.borderColor = UIColor.systemRed.cgColor
            nameinput.layer.borderWidth = 1
            nameinput.layer.cornerRadius = 5
        }
        else{
            if nameinput.text == "三角龍" {
                if heightinput.value < 0.5 && footinput.selectedSegmentIndex == 0 && vagitableinput.isOn == true{
                    detailresault.text = "而且特徵是這樣沒錯"
                }else{
                    detailresault.text = "你特徵是不是搞錯了？"
                }
                showresault.text = "是的！超愛！"
            }else if nameinput.text == "雷龍" && heightinput.value > 0.5 && footinput.selectedSegmentIndex == 0 && vagitableinput.isOn == true {
                showresault.text = "是的！超愛！"
                
            }else if nameinput.text == "劍龍" && heightinput.value < 0.5 && footinput.selectedSegmentIndex == 0 && vagitableinput.isOn == true {
                showresault.text = "是的！超愛！"
                
            }else if nameinput.text == "翼手龍" && heightinput.value < 0.5 && footinput.selectedSegmentIndex == 1 && vagitableinput.isOn == true {
                showresault.text = "是的！超愛！"
                
            }else{
                showresault.text = "抱歉，不是"
            }
            
        }
        
        
    }
    
    
    
}

