//
//  ViewController.swift
//  Task_2.2.1
//
//  Created by Никита Бат on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.text = "\(String(format: "%.2f", redSlider.value))"
        greenLabel.text = "\(String(format: "%.2f", greenSlider.value))"
        blueLabel.text = "\(String(format: "%.2f", blueSlider.value))"
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func redSliderSlide() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        redLabel.text = "\(String(format: "%.2f", redSlider.value))"
        redSlider.minimumTrackTintColor = UIColor(red: CGFloat(redSlider.value), green: 0, blue: 0, alpha: 1)
    }
    
    @IBAction func greenSliderSlide(_ sender: Any) {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        greenLabel.text = "\(String(format: "%.2f", greenSlider.value))"
        greenSlider.minimumTrackTintColor = UIColor(red: 0, green: CGFloat(greenSlider.value), blue: 0, alpha: 1)
    }
    
    @IBAction func blueSliderSlide(_ sender: Any) {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        blueLabel.text = "\(String(format: "%.2f", blueSlider.value))"
        blueSlider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}

