//
//  RiddleBrain.swift
//  Riddler
//
//  Created by ShoTora on 2020/12/09.
//

import Foundation

struct RiddleBrain {
    
    var questionNumber = 0
    
    let quiz = [
        Question(q: "What can be seen once in a minute, twice in a moment, and never in a thousand years?", a: "The Letter “M”"),
        Question(q: "which word is written incorrectly in a dictionary?", a: "The Word “Incorrectly”"),
        Question(q: "What flies when it’s born, lies when it’s alive, and runs when it’s dead?", a: "A Snowflake"),
        Question(q: "I’m always somewhere between the ground and the sky, always far in the distance, always moving further away if one attempts to come closer. What am I?", a: "The Horizon"),
        Question(q: "What five-letter word becomes shorter when you add two letters to it?", a: "Short"),
        Question(q: "I am an odd number. Take aways a letter and I become even. What number am I?", a: "Seven"),
        Question(q: "I have 2 coins that equal 30 cents and one of them is not a nickel. What are they?", a: "A Quarter and A Nickel"),
        Question(q: "If there are three apples and you take away two, how many apples do you have?", a: "You have two apples")
        ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
        
    }
    
    func getQuestionAnswer() -> String {
        return quiz[questionNumber].answer
    }
            
    mutating func nextQuestion() {
       
       if questionNumber + 1 < quiz.count {
           questionNumber += 1
       } else {
           questionNumber = 0
       }
        print(questionNumber)
   }
    
}
