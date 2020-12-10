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
    
    var questionBrain = RiddleBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionTextLabel.text = questionBrain.getQuestionText()

    }

    @IBAction func checkAnswerButtonPressed(_ sender: UIButton) {
      
        self.performSegue(withIdentifier: "toAnswerViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toAnswerViewController" {
                let ansVC = segue.destination as! AnswerViewController
                ansVC.answerBrain.questionNumber = questionBrain.questionNumber
            }
    }

    
}

