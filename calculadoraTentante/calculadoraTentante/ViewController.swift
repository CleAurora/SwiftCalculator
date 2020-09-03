//
//  ViewController.swift
//  calculadoraTentante
//
//  Created by Cleís Aurora Pereira on 31/08/20.
//  Copyright © 2020 Cleís Aurora Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numero1: Float = 0
    var numero2: Float = 0
    var operation: String? = nil
    var resultadoDaOperacao: Float = 0
    
    func soma(numero1: Float, numero2: Float) -> Float {
        return numero1 + numero2
    }
    
    func subtracao(numero1: Float, numero2: Float) -> Float{
        return numero1 - numero2
    }
    
    func multiplicacao(numero1: Float, numero2: Float) -> Float {
        return numero1 * numero2
    }
    
    func divisao(numero1:Float, numero2:Float) -> Float
    {
        return numero1/numero2
    }
    
    func pegarNumero1() {
        if let text = resultLabel.text {
            numero1 = Float(text) ?? 0
        }
    }
    
    func pegarNumero2() {
        if let text = resultLabel.text {
            numero2 = Float(text) ?? 0
        }
    }
    
    @IBAction func soma() {
        pegarNumero1()
        operation = "+"
        acTapped()
    }
    
    @IBAction func multiplicacao() {
        pegarNumero1()
        operation = "*"
        acTapped()
    }
    
    @IBAction func subtracao() {
        pegarNumero1()
        operation = "-"
        acTapped()
    }
    
    @IBOutlet weak var addMinusButton: UIButton!
    
    @IBOutlet weak var multiplyButton: UIButton!
 
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var commaButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var sumButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var minnusButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var ACbutton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func divisao() {
        pegarNumero1()
        operation = "/"
        acTapped()
    }
    override func viewDidLoad() {
        ACbutton.layer.cornerRadius = 24
        super.viewDidLoad()
        addMinusButton.layer.cornerRadius = 24
        percentButton.layer.cornerRadius = 24
        divisionButton.layer.cornerRadius = 24
        sevenButton.layer.cornerRadius = 24
        eightButton.layer.cornerRadius = 24
        nineButton.layer.cornerRadius = 24
        multiplyButton.layer.cornerRadius = 24
        fourButton.layer.cornerRadius = 24
        fiveButton.layer.cornerRadius = 24
        sixButton.layer.cornerRadius = 24
        minnusButton.layer.cornerRadius = 24
        oneButton.layer.cornerRadius = 24
        twoButton.layer.cornerRadius = 24
        threeButton.layer.cornerRadius = 24
        sumButton.layer.cornerRadius = 24
        zeroButton.layer.cornerRadius = 24
        commaButton.layer.cornerRadius = 24
        equalButton.layer.cornerRadius = 24
        
        // Do any additional setup after loading the view.
    }

    @IBAction func acTapped() {
        resultLabel.text = ""
    }
    
    @IBAction func equalTapped() {
        pegarNumero2()
        acTapped()
        
        if operation == "+" {
            resultadoDaOperacao = soma(numero1: numero1, numero2: numero2)
        }else if operation == "-"{
            resultadoDaOperacao = subtracao(numero1: numero1, numero2: numero2)
        }else if operation == "*"{
            resultadoDaOperacao = multiplicacao(numero1: numero1, numero2: numero2)
        }else if operation == "/"{
            resultadoDaOperacao = divisao(numero1: numero1, numero2: numero2)
        }
        
        resultLabel.text = "\(resultadoDaOperacao)"
    }
    
    @IBAction func zeroTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)0"
    }
    
    @IBAction func oneTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)1"
    }
    
    @IBAction func twoTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)2"
    }
    
    @IBAction func threeTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)3"
    }
    
    @IBAction func fourTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)4"
    }
    
    @IBAction func fiveTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)5"
    }
    
    @IBAction func sixTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)6"
    }

    @IBAction func sevenTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)7"
    }
    
    @IBAction func eightTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)8"
    }
    
    @IBAction func nineTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)9"
    }
    
    @IBAction func commaTapped() {
        let text = resultLabel.text ?? ""
        resultLabel.text = "\(text)."
    }
    
    
}

