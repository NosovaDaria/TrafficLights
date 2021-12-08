//
//  ViewController.swift
//  TrafficLights
//
//  Created by Дарья Носова on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var redLightView: UIView!
  @IBOutlet var yellowLightView: UIView!
  @IBOutlet var greenLightView: UIView!
  @IBOutlet var startButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    redLightView.alpha = 0.3
    yellowLightView.alpha = 0.3
    greenLightView.alpha = 0.3
    redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
    yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
    greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 2
  }
  
  @IBAction func startPressed(_ sender: UIButton) {
    if redLightView.alpha < 1 && yellowLightView.alpha < 1 {
      greenLightView.alpha = 0.3
      redLightView.alpha = 1
      startButton.setTitle("NEXT", for: .normal)
    } else if redLightView.alpha == 1 {
      redLightView.alpha = 0.3
      yellowLightView.alpha = 1
    } else if yellowLightView.alpha == 1 {
      yellowLightView.alpha = 0.3
      greenLightView.alpha = 1
    }
  }

}

