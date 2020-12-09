//
//  AnswerViewController.swift
//  Riddler
//
//  Created by ShoTora on 2020/12/09.
//


import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerTextLabel: UILabel!
    @IBOutlet weak var goNextButton: UIButton!
    
    var answerBrain = RiddleBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        answerTextLabel.text = answerBrain.getQuestionAnswer()
        
    }
   
    @IBAction func goNextButtonPressed(_ sender: UIButton) {
        
        answerBrain.nextQuestion()
    }
}
