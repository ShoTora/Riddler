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
        
        performSegue(withIdentifier: "toQuestionViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toQuestionViewController" {
                let quesVC = segue.destination as! QuestionViewController
                quesVC.questionBrain.questionNumber = answerBrain.questionNumber
            }
    }

}
