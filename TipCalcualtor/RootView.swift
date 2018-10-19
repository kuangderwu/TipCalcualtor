//
//  RootView.swift
//  TipCalcualtor
//
//  Created by apple on 2018/10/19.
//  Copyright © 2018 Kuang-Der Wu. All rights reserved.
//

import UIKit

class RootView: UIView {

    var titleLabel: UILabel!
    var viewH1: UIView!
    var viewB1: UIView!
    var containView1: UIStackView!
    
    var viewH2: UIView!
    var viewB2: UIView!
    var containView2: UIStackView!

    var viewH3: UIView!
    var viewB3: UIView!
    var containView3: UIStackView!
    
    var viewH4: UIView!
    var viewB4: UIView!
    var containView4: UIStackView!
    
    var billLabel: UILabel!
    var tipLabel: UILabel!
    var splitLabel: UILabel!
    
    var billTextField: UITextField!
    var tipSlider: UISlider!
    var splitSlider: UISlider!
    
    var totalLabel: UILabel!
    var eachLabel: UILabel!
    
    var totalValueLabel: UILabel!
    var eachValueLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()
        configureBill()
        configureTips()
        configureSplit()
        configureDisplay()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureLabel() {
        
        self.backgroundColor = UIColor.black
        
        titleLabel = {
            let label = UILabel()
            label.text = "Tip Calculator"
            label.textAlignment = .center
            label.textColor = UIColor.white
            label.font = UIFont.boldSystemFont(ofSize: 36)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 60),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.9),
            titleLabel.heightAnchor.constraint(equalToConstant: 48)
            ])
    }
    
    func configureBill() {
        
        viewH1 = {
            let h1View = UIView()
            h1View.backgroundColor = UIColor(red: 20/255, green: 20/255, blue: 20/255, alpha: 1)
            h1View.translatesAutoresizingMaskIntoConstraints = false
            h1View.layer.cornerRadius = 5
            return h1View
        }()
        
        viewB1 = {
            let b1View = UIView()
            b1View.backgroundColor = UIColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 1)
            b1View.translatesAutoresizingMaskIntoConstraints = false
            b1View.layer.cornerRadius = 5
            return b1View
        }()
        
        billLabel = {
            let label = UILabel()
            label.text = "Bill"
            label.textColor = UIColor.white
            label.textAlignment = .left
            label.backgroundColor = UIColor.clear
            label.font = UIFont.systemFont(ofSize: 16)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        billTextField = {
            let textField = UITextField()
            textField.textColor = UIColor.white
            textField.textAlignment = .left
            textField.keyboardType = .numberPad
            textField.enablesReturnKeyAutomatically = true
            textField.font = UIFont.systemFont(ofSize: 16)
            textField.backgroundColor = UIColor.clear
            textField.translatesAutoresizingMaskIntoConstraints = false
            return textField
        }()
        
        containView1 = UIStackView(arrangedSubviews: [viewH1, viewB1])
        containView1.translatesAutoresizingMaskIntoConstraints = false
        containView1.axis = .horizontal
        
        viewH1.addSubview(billLabel)
        viewB1.addSubview(billTextField)
        self.addSubview(containView1)
        
        
        NSLayoutConstraint.activate([
            containView1.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24),
            containView1.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            containView1.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.95),
            containView1.heightAnchor.constraint(equalToConstant: 48)
            ])
        
        NSLayoutConstraint.activate([
            viewH1.topAnchor.constraint(equalTo: containView1.topAnchor, constant: 2),
            viewH1.leadingAnchor.constraint(equalTo: containView1.leadingAnchor, constant: 2),
            viewH1.bottomAnchor.constraint(equalTo: containView1.bottomAnchor, constant: -2),
            viewH1.widthAnchor.constraint(equalTo: containView1.widthAnchor, multiplier: 0.35)
            ])
    
        NSLayoutConstraint.activate([
            billLabel.topAnchor.constraint(equalTo: viewH1.topAnchor, constant: 12),
            billLabel.leadingAnchor.constraint(equalTo: viewH1.leadingAnchor, constant: 12),
            billLabel.bottomAnchor.constraint(equalTo: viewH1.bottomAnchor, constant: -12),
            billLabel.trailingAnchor.constraint(equalTo: viewH1.trailingAnchor)
            ])
        
        
        NSLayoutConstraint.activate([
            viewB1.topAnchor.constraint(equalTo: viewH1.topAnchor),
            viewB1.trailingAnchor.constraint(equalTo: containView1.trailingAnchor, constant: -2),
            viewB1.bottomAnchor.constraint(equalTo: viewH1.bottomAnchor),
            viewB1.leadingAnchor.constraint(equalTo: viewH1.trailingAnchor, constant: 8)
            ])
        
        NSLayoutConstraint.activate([
            billTextField.topAnchor.constraint(equalTo: billLabel.topAnchor),
            billTextField.leadingAnchor.constraint(equalTo: viewB1.leadingAnchor, constant: 8),
            billTextField.bottomAnchor.constraint(equalTo: billLabel.bottomAnchor),
            billTextField.trailingAnchor.constraint(equalTo: viewB1.trailingAnchor, constant: -8)
            ])
        
    }
    
    func configureTips() {
        
        viewH2 = {
            let h1View = UIView()
            h1View.backgroundColor = UIColor(red: 20/255, green: 20/255, blue: 20/255, alpha: 1)
            h1View.translatesAutoresizingMaskIntoConstraints = false
            h1View.layer.cornerRadius = 5
            return h1View
        }()
        
        viewB2 = {
            let b1View = UIView()
            b1View.backgroundColor = UIColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 1)
            b1View.translatesAutoresizingMaskIntoConstraints = false
            b1View.layer.cornerRadius = 5
            return b1View
        }()
        
        
        tipSlider = {
            let slider = UISlider()
            slider.maximumValue = 0.25
            slider.minimumValue = 0.10
            slider.value = 0.12
            slider.backgroundColor = UIColor.clear
            slider.tintColor = UIColor(red: 255/255, green: 192/255, blue: 0/255, alpha: 1)
            slider.layer.shadowColor = UIColor.blue.cgColor
            slider.layer.shadowOpacity = 2
            slider.layer.shadowOffset = CGSize(width: 0, height: 2)
            slider.translatesAutoresizingMaskIntoConstraints = false
            return slider
        } ()
        
        tipLabel = {
            let label = UILabel()
            label.text = "Tip: \(tipSlider.value * 100)%"
            label.textColor = UIColor.white
            label.textAlignment = .left
            label.backgroundColor = UIColor.clear
            label.font = UIFont.systemFont(ofSize: 16)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        containView2 = UIStackView(arrangedSubviews: [viewH2, viewB2])
        containView2.translatesAutoresizingMaskIntoConstraints = false
        containView2.axis = .horizontal
        
        viewH2.addSubview(tipLabel)
        viewB2.addSubview(tipSlider)
        self.addSubview(containView2)
        
        NSLayoutConstraint.activate([
            containView2.topAnchor.constraint(equalTo: containView1.bottomAnchor, constant: 16),
            containView2.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            containView2.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.95),
            containView2.heightAnchor.constraint(equalToConstant: 48)
            ])
        
        NSLayoutConstraint.activate([
            viewH2.topAnchor.constraint(equalTo: containView2.topAnchor, constant: 2),
            viewH2.leadingAnchor.constraint(equalTo: containView2.leadingAnchor, constant: 2),
            viewH2.bottomAnchor.constraint(equalTo: containView2.bottomAnchor, constant: -2),
            viewH2.widthAnchor.constraint(equalTo: containView2.widthAnchor, multiplier: 0.35)
            ])
        
        NSLayoutConstraint.activate([
            tipLabel.topAnchor.constraint(equalTo: viewH2.topAnchor, constant: 12),
            tipLabel.leadingAnchor.constraint(equalTo: viewH2.leadingAnchor, constant: 12),
            tipLabel.bottomAnchor.constraint(equalTo: viewH2.bottomAnchor, constant: -12),
            tipLabel.trailingAnchor.constraint(equalTo: viewH2.trailingAnchor)
            ])
        
        
        NSLayoutConstraint.activate([
            viewB2.topAnchor.constraint(equalTo: viewH2.topAnchor),
            viewB2.trailingAnchor.constraint(equalTo: containView2.trailingAnchor, constant: -2),
            viewB2.bottomAnchor.constraint(equalTo: viewH2.bottomAnchor),
            viewB2.leadingAnchor.constraint(equalTo: viewH2.trailingAnchor, constant: 8)
            ])
        
        NSLayoutConstraint.activate([
            tipSlider.topAnchor.constraint(equalTo: tipLabel.topAnchor),
            tipSlider.leadingAnchor.constraint(equalTo: viewB2.leadingAnchor, constant: 8),
            tipSlider.bottomAnchor.constraint(equalTo: tipLabel.bottomAnchor),
            tipSlider.trailingAnchor.constraint(equalTo: viewB2.trailingAnchor, constant: -8)
            ])
        
    }

    func configureSplit() {
        
        viewH3 = {
            let h1View = UIView()
            h1View.backgroundColor = UIColor(red: 20/255, green: 20/255, blue: 20/255, alpha: 1)
            h1View.translatesAutoresizingMaskIntoConstraints = false
            h1View.layer.cornerRadius = 5
            return h1View
        }()
        
        viewB3 = {
            let b1View = UIView()
            b1View.backgroundColor = UIColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 1)
            b1View.translatesAutoresizingMaskIntoConstraints = false
            b1View.layer.cornerRadius = 5
            return b1View
        }()
        

        
        splitSlider = {
            let slider = UISlider()
            slider.maximumValue = 12
            slider.minimumValue = 1
            slider.value = 1
            slider.backgroundColor = UIColor.clear
            slider.tintColor = UIColor(red: 255/255, green: 192/255, blue: 0/255, alpha: 1)
            slider.layer.shadowColor = UIColor.blue.cgColor
            slider.layer.shadowOpacity = 2
            slider.layer.shadowOffset = CGSize(width: 0, height: 2)
            slider.translatesAutoresizingMaskIntoConstraints = false
            return slider
        } ()
        
        splitLabel = {
            let label = UILabel()
            label.text = "Split: \(splitSlider.value)"
            label.textColor = UIColor.white
            label.textAlignment = .left
            label.backgroundColor = UIColor.clear
            label.font = UIFont.systemFont(ofSize: 16)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        
        containView3 = UIStackView(arrangedSubviews: [viewH3, viewB3])
        containView3.translatesAutoresizingMaskIntoConstraints = false
        containView3.axis = .horizontal
        
        viewH3.addSubview(splitLabel)
        viewB3.addSubview(splitSlider)
        self.addSubview(containView3)
        
        NSLayoutConstraint.activate([
            containView3.topAnchor.constraint(equalTo: containView2.bottomAnchor, constant: 16),
            containView3.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            containView3.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.95),
            containView3.heightAnchor.constraint(equalToConstant: 48)
            ])
        
        NSLayoutConstraint.activate([
            viewH3.topAnchor.constraint(equalTo: containView3.topAnchor, constant: 2),
            viewH3.leadingAnchor.constraint(equalTo: containView3.leadingAnchor, constant: 2),
            viewH3.bottomAnchor.constraint(equalTo: containView3.bottomAnchor, constant: -2),
            viewH3.widthAnchor.constraint(equalTo: containView3.widthAnchor, multiplier: 0.35)
            ])
        
        NSLayoutConstraint.activate([
            splitLabel.topAnchor.constraint(equalTo: viewH3.topAnchor, constant: 12),
            splitLabel.leadingAnchor.constraint(equalTo: viewH3.leadingAnchor, constant: 12),
            splitLabel.bottomAnchor.constraint(equalTo: viewH3.bottomAnchor, constant: -12),
            splitLabel.trailingAnchor.constraint(equalTo: viewH3.trailingAnchor)
            ])
        
        NSLayoutConstraint.activate([
            viewB3.topAnchor.constraint(equalTo: viewH3.topAnchor),
            viewB3.trailingAnchor.constraint(equalTo: containView3.trailingAnchor, constant: -2),
            viewB3.bottomAnchor.constraint(equalTo: viewH3.bottomAnchor),
            viewB3.leadingAnchor.constraint(equalTo: viewH3.trailingAnchor, constant: 8)
            ])
        
        NSLayoutConstraint.activate([
            splitSlider.topAnchor.constraint(equalTo: splitLabel.topAnchor),
            splitSlider.leadingAnchor.constraint(equalTo: viewB3.leadingAnchor, constant: 8),
            splitSlider.bottomAnchor.constraint(equalTo: splitLabel.bottomAnchor),
            splitSlider.trailingAnchor.constraint(equalTo: viewB3.trailingAnchor, constant: -8)
            ])
        
    }

    func configureDisplay() {
        
        viewH4 = {
            let h1View = UIView()
            h1View.backgroundColor = UIColor(red: 20/255, green: 75/255, blue: 235/255, alpha: 1)
            h1View.translatesAutoresizingMaskIntoConstraints = false
            h1View.layer.cornerRadius = 5
            return h1View
        }()
        
        viewB4 = {
            let b1View = UIView()
            b1View.backgroundColor = UIColor(red: 20/255, green: 75/255, blue: 235/255, alpha: 1)
            b1View.translatesAutoresizingMaskIntoConstraints = false
            b1View.layer.cornerRadius = 5
            return b1View
        }()
        
        

        totalLabel = {
            let label = UILabel()
            label.text = "Total"
            label.textColor = UIColor.white
            label.textAlignment = .left
            label.backgroundColor = UIColor.clear
            label.font = UIFont.systemFont(ofSize: 16)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        eachLabel = {
            let label = UILabel()
            label.text = "Each"
            label.textColor = UIColor.white
            label.textAlignment = .left
            label.backgroundColor = UIColor.clear
            label.font = UIFont.systemFont(ofSize: 16)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

        totalValueLabel = {
            let label = UILabel()
            label.text = "$/total"
            label.textColor = UIColor.white
            label.textAlignment = .left
            label.backgroundColor = UIColor.clear
            label.font = UIFont.boldSystemFont(ofSize: 24)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        eachValueLabel = {
            let label = UILabel()
            label.text = "$/per"
            label.textColor = UIColor.white
            label.textAlignment = .left
            label.backgroundColor = UIColor.clear
            label.font = UIFont.boldSystemFont(ofSize: 24)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        containView4 = UIStackView(arrangedSubviews: [viewH4, viewB4])
        containView4.translatesAutoresizingMaskIntoConstraints = false
        containView4.axis = .horizontal
        
        viewH4.addSubview(totalLabel)
        viewH4.addSubview(totalValueLabel)
        viewB4.addSubview(eachLabel)
        viewB4.addSubview(eachValueLabel)
        self.addSubview(containView4)
        
        NSLayoutConstraint.activate([
            containView4.topAnchor.constraint(equalTo: containView3.bottomAnchor, constant: 16),
            containView4.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            containView4.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.95),
            containView4.heightAnchor.constraint(equalToConstant: 100)
            ])
        
        NSLayoutConstraint.activate([
            viewH4.topAnchor.constraint(equalTo: containView4.topAnchor, constant: 2),
            viewH4.leadingAnchor.constraint(equalTo: containView4.leadingAnchor, constant: 2),
            viewH4.bottomAnchor.constraint(equalTo: containView4.bottomAnchor, constant: -2),
            viewH4.trailingAnchor.constraint(equalTo: containView4.centerXAnchor, constant: -8)
            ])

        NSLayoutConstraint.activate([
            totalLabel.topAnchor.constraint(equalTo: viewH4.topAnchor, constant: 4),
            totalLabel.leadingAnchor.constraint(equalTo: viewH4.leadingAnchor, constant: 4),
            totalLabel.heightAnchor.constraint(equalToConstant: 24),
            totalLabel.widthAnchor.constraint(equalToConstant: 80)
            ])
  
        NSLayoutConstraint.activate([
            totalValueLabel.bottomAnchor.constraint(equalTo: viewH4.bottomAnchor, constant: -4),
            totalValueLabel.leadingAnchor.constraint(equalTo: viewH4.leadingAnchor, constant: 4),
            totalValueLabel.heightAnchor.constraint(equalToConstant: 50),
            totalValueLabel.widthAnchor.constraint(equalTo: viewH4.widthAnchor, multiplier: 0.95)
            ])
        
        
        
        NSLayoutConstraint.activate([
            viewB4.topAnchor.constraint(equalTo: viewH4.topAnchor),
            viewB4.trailingAnchor.constraint(equalTo: containView4.trailingAnchor, constant: -2),
            viewB4.bottomAnchor.constraint(equalTo: viewH4.bottomAnchor),
            viewB4.leadingAnchor.constraint(equalTo: containView4.centerXAnchor, constant: 8)
            ])
        
        NSLayoutConstraint.activate([
            eachLabel.topAnchor.constraint(equalTo: viewB4.topAnchor, constant: 4),
            eachLabel.leadingAnchor.constraint(equalTo: viewB4.leadingAnchor, constant: 4),
            eachLabel.heightAnchor.constraint(equalToConstant: 24),
            eachLabel.widthAnchor.constraint(equalToConstant: 80)
            ])

        NSLayoutConstraint.activate([
            eachValueLabel.bottomAnchor.constraint(equalTo: viewB4.bottomAnchor, constant: -4),
            eachValueLabel.leadingAnchor.constraint(equalTo: viewB4.leadingAnchor, constant: 4),
            eachValueLabel.heightAnchor.constraint(equalToConstant: 50),
            eachValueLabel.widthAnchor.constraint(equalTo: viewB4.widthAnchor, multiplier: 0.95)
            ])
        
        
    }
    
}
