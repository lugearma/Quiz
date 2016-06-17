//
//  ViewController.swift
//  Quiz
//
//  Created by Luis Arias on 16/06/16.
//  Copyright © 2016 Luis Arias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions: [String] = ["From what is cognac made?", "What is 7 + 7?", "What is the capital of Vermont?"]
    
    let answers: [String] = ["Grapes", "14", "Montpelier"]
    
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.questionLabel.text = self.questions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(sender: AnyObject){
        self.currentQuestionIndex += 1
        if self.currentQuestionIndex == questions.count{
            self.currentQuestionIndex = 0
        }
        
        let question: String = questions[self.currentQuestionIndex]
        self.questionLabel.text = question
        self.answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject){
        let answer: String = answers[self.currentQuestionIndex]
        self.answerLabel.text = answer
    }

}

