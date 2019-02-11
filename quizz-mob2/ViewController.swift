//
//  ViewController.swift
//  quizz-mob2
//
//  Created by Bastien Nicoud on 11.02.19.
//  Copyright © 2019 CPNV-ES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /**
     Outlets
     */
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var hintButton: UIButton!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var quizzProgressBar: UIProgressView!
    
    var session: QuizSession!
    
    /**
     Display questions when view loaded
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creates a new quizz session, and display first question
        session = QuizSession()
        nextOne()
    }

    /**
     Action called when you touch the information button.
     */
    @IBAction func onHintButtonTouch() {
        hintLabel.isHidden = false
    }
    
    /**
     Action called when you pinch the screen with two fingers.
     */
    @IBAction func onScreenPinch(_ sender: UIPinchGestureRecognizer) {
        // Restart the game
        session = QuizSession()
        nextOne()
    }
    
    /**
     Action called when you touch an answer.
     */
    @IBAction func onAnswerTouch(_ sender: UIButton) {
        // Check the touched answer
        session.checkAnswer(sender.currentTitle!)
        nextOne()
    }
    
    /**
     Display quizz question and answers
     */
    func nextOne() {
        // get the next question from the session
        if let question = session.nextQuestion() {
            
            // Mask hint
            hintLabel.isHidden = true
            scoreLabel.isHidden = true
            hintButton.isEnabled = true
            
            // Set the question, answers and hint
            questionLabel.text = question.caption
            hintLabel.text = question.hint
            answerButton1.setTitle(question.answers[0], for: UIControl.State())
            answerButton2.setTitle(question.answers[1], for: UIControl.State())
            answerButton3.setTitle(question.answers[2], for: UIControl.State())
            
            // Show answers
            answerButtons(isHidden: false)
            
        } else {
            
            // No more questions! This is the end
            hintButton.isEnabled = false
            hintLabel.isHidden = true
            answerButtons(isHidden: true)
            
            // Display the score
            scoreLabel.text = "\(session.score.score) / \(session.questionsCount)"
            questionLabel.text = "Quizz terminé !"
            scoreLabel.isHidden = false
            
        }
    }
    
    func answerButtons (isHidden: Bool) {
        answerButton1.isHidden = isHidden
        answerButton2.isHidden = isHidden
        answerButton3.isHidden = isHidden
    }
    
}

