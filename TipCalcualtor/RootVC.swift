//
//  RootVC.swift
//  TipCalcualtor
//
//  Created by apple on 2018/10/19.
//  Copyright © 2018 Kuang-Der Wu. All rights reserved.
//

import UIKit

class RootVC: UIViewController, UITextFieldDelegate {

    var rootView: RootView!
    var bill: Double!
    var tipRate: Double = 0.12
    var spliteNbr: Double = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        rootView.billTextField.delegate = self
        rootView.tipSlider.addTarget(self, action: #selector(tiprateChange), for: UIControl.Event.valueChanged)
        rootView.splitSlider.addTarget(self, action: #selector(splitNbrChange), for: UIControl.Event.valueChanged)
    }
    
    func calculate() {

        let total = bill * (1 + tipRate)
        let each = total / spliteNbr
        DispatchQueue.main.async {
            self.rootView.totalValueLabel.text = String(format: "$%0.2f", total)
            self.rootView.eachValueLabel.text = String(format: "$%0.2f", each)
            self.rootView.tipLabel.text = String(format: "Tip:%0.2f", self.tipRate)
            self.rootView.splitLabel.text = String(format: "Split:%2d", Int(self.spliteNbr))

        }
        
    }
    
    
    func setupLayout() {
        
        rootView = RootView(frame: self.view.bounds)
        view.addSubview(rootView)
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        view.endEditing(true)
        if !(rootView.billTextField.text?.isEmpty)! {
            bill = Double(rootView.billTextField.text!)
            calculate()
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        if !(rootView.billTextField.text?.isEmpty)! {
            bill = Double(rootView.billTextField.text!)
            calculate()
        }
        return true
    }
    
    @objc func tiprateChange() {
        if !(rootView.billTextField.text?.isEmpty)! {
            bill = Double(rootView.billTextField.text!)
            tipRate = Double(rootView.tipSlider.value)
            calculate()
        }
    }
    
    @objc func splitNbrChange() {
        if !(rootView.billTextField.text?.isEmpty)! {
            bill = Double(rootView.billTextField.text!)
            spliteNbr = round(Double(rootView.splitSlider.value))
            print(spliteNbr)
            calculate()
        }
    }
    
}
