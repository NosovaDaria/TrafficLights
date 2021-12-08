//
//  ViewController.swift
//  TrafficLights
//
//  Created by Дарья Носова on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
  
  //  MARK: - IB Outlets
  @IBOutlet var redLightView: UIView!
  @IBOutlet var yellowLightView: UIView!
  @IBOutlet var greenLightView: UIView!
  
  @IBOutlet var startButton: UIButton!
  
  // MARK: - Life Cycles Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    redLightView.alpha = 0.3
    yellowLightView.alpha = 0.3
    greenLightView.alpha = 0.3

  }
  
  override func viewDidAppear(_ animated: Bool) {
    redLightView.layer.cornerRadius = redLightView.frame.size.height / 2
    greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
  }
    
  // MARK: - IB Actions
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

