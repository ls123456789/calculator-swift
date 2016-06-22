//
//  ViewController.swift
//  calculator
//
//  Created by 梁爽 on 16/6/22.
//  Copyright © 2016年 梁爽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var x: UITextField!
    
    var falg=0
    var temp=0.0
    
    @IBAction func add(sender: AnyObject) {
        if falg==0 {
            temp=(Double)(x.text!)!
            x.text=""
            falg=1
        }
    }
    @IBAction func sub(sender: AnyObject) {
        if falg==0 {
            temp=(Double)(x.text!)!
            x.text=""
            falg=2
        }
    }
    @IBAction func mul(sender: AnyObject) {
        if falg==0 {
            temp=(Double)(x.text!)!
            x.text=""
            falg=3
        }
    }
    @IBAction func div(sender: AnyObject) {
        if falg==0 {
            temp=(Double)(x.text!)!
            x.text=""
            falg=4
        }
    }
    @IBAction func calculator(sender: AnyObject) {
        switch falg {
        case 1:
            temp=temp+(Double)(x.text!)!
            break
        case 2:
            temp=temp-(Double)(x.text!)!
            break
        case 3:
            temp=temp*(Double)(x.text!)!
            break
        case 4:
            if (Double)(x.text!)==0 {
                let alertView=UIAlertView()
                alertView.title="系统提示"
                 alertView.message="0不可以作除数"
                alertView.addButtonWithTitle("确认")
                alertView.show()
            }
            else{
                temp=temp/(Double)(x.text!)!
                x.text="\(temp)"
            }
            break
        default:
            break
        }
        x.text="\(temp)"
        
    }
    @IBAction func ce(sender: AnyObject) {
        temp=0
        x.text=""
        falg=0
    }
    
    @IBAction func num1(sender: AnyObject) {
        x.text=x.text!+"1"
    }
    @IBAction func num2(sender: AnyObject) {
        x.text=x.text!+"2"
    }
    @IBAction func num3(sender: AnyObject) {
        x.text=x.text!+"3"
    }
    @IBAction func num4(sender: AnyObject) {
        x.text=x.text!+"4"
    }
    @IBAction func num5(sender: AnyObject) {
        x.text=x.text!+"5"
    }
    @IBAction func num6(sender: AnyObject) {
        x.text=x.text!+"6"
    }
    @IBAction func num7(sender: AnyObject) {
        x.text=x.text!+"7"
    }
    @IBAction func num8(sender: AnyObject) {
        x.text=x.text!+"8"
    }
    @IBAction func num9(sender: AnyObject) {
        x.text=x.text!+"9"
    }
    @IBAction func num0(sender: AnyObject) {
        x.text=x.text!+"0"
    }


}

