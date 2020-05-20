//
//  ViewController.swift
//  Constraint_ po_TZ
//
//  Created by Viktor Smirnov on 20.05.2020.
//  Copyright © 2020 Viktor Smirnov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let labelEmoji = UILabel()
    let labelText = UILabel()
    let labelText1 = UILabel()
    let buttonText = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupElements()
        setupConstraints()
        
    }
    func setupElements() {
        
        view.backgroundColor = .blue
//        (5AC8FA)
// LabelEmoji
        labelEmoji.text = "😊"
//LabelText
        labelText.text = "Сначала нам нужно немного познакомиться! Сейчас мы определим твой уровень активности, настроим предпочтения и выберем тип подписки!"
        labelText.numberOfLines = 4
        labelText.textColor = .black
//        labelText.shadowOffset = CGSize()
        
        
//LabelText1
        labelText1.text = "Некоторые из шагов не обязательны к заполнению. Ты можешь пропустить их и настроить позже в Настройках приложения."
        labelText1.numberOfLines = 0
        labelText1.textColor = .black
        
        
        
//ButtonText
        buttonText.setTitle("Ок. Начнём!", for: .normal)
        buttonText.tintColor = .white
        
        
    }
    
    
    
    func setupConstraints() {
        
        labelEmoji.translatesAutoresizingMaskIntoConstraints = false
        labelText.translatesAutoresizingMaskIntoConstraints = false
        labelText1.translatesAutoresizingMaskIntoConstraints = false
        buttonText.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(labelEmoji)
        view.addSubview(labelText)
        view.addSubview(labelText1)
        view.addSubview(buttonText)
        
        NSLayoutConstraint.activate([
            labelEmoji.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            labelEmoji.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
//            labelEmoji.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
//            labelEmoji.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            labelText.topAnchor.constraint(equalTo: labelEmoji.bottomAnchor, constant: 20),
            labelText.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            labelText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            labelText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        NSLayoutConstraint.activate([
            labelText1.topAnchor.constraint(equalTo: labelText.bottomAnchor, constant: 20),
            labelText1.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            labelText1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            labelText1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        NSLayoutConstraint.activate([
            buttonText.topAnchor.constraint(equalTo: labelText1.bottomAnchor, constant: 20),
            buttonText.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
//            buttonText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
//            buttonText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    
}

