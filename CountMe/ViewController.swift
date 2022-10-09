//
//  ViewController.swift
//  CountMe
//
//  Created by Виктория Щербакова on 09.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    private var counter: Int = 0
    
    @IBAction func resetCount(_ sender: UIButton) {
        counter = 0
        countLabel.text = "\(counter)"
    }
    
    @IBAction func increase(_ sender: UIButton) {
        counter += 1
        countLabel.text = "\(counter)"
    }
    
    @IBAction func decrease(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            countLabel.text = "\(counter)"
        } else {
            let alert = UIAlertController(title: "Ошибка", message: "Мы не можем посчитать меньше 0 :(", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Понятно", style: .destructive, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonShadow(increaseButton)
        buttonShadow(decreaseButton)
        buttonShadow(resetButton)
    }
    
    func buttonShadow(_ button: UIButton){
        button.layer.shadowColor = UIColor.darkGray.cgColor
        button.layer.shadowOffset = CGSize(width: 5, height: 5)
        button.layer.shadowRadius = 4.0
        button.layer.shadowOpacity = 0.4
    }
}

