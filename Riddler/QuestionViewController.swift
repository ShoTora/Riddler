//
//  ViewController.swift
//  Riddler
//
//  Created by ShoTora on 2020/12/09.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var checkAnswerButton: UIButton!
    
    var riddleBrain = RiddleBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    @IBAction func checkAnswerButtonPressed(_ sender: UIButton) {

    }
    
    
    @objc func updateUI() {
        questionTextLabel.text = riddleBrain.getQuestionText()
                
    }
    
}

