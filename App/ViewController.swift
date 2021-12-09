//
//  ViewController.swift
//  App
//
//  Created by Максим Шипулин on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    enum Lights{
        case red
        case yellow
        case green
    }
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    var currentColor = Lights.green
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.layer.bounds.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.layer.bounds.width / 2
        greenLightView.layer.cornerRadius = greenLightView.layer.bounds.width / 2
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    @IBAction func startButtonPress() {
        startButton.setTitle("NEXT", for: .normal)
        switch currentColor {
        case .red:
            currentColor = .yellow
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
        case .yellow:
            currentColor = .green
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        case .green:
            currentColor = .red
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        }
    }
    
}

