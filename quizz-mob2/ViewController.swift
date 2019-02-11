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
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var quizzProgressBar: UIProgressView!
    
    /**
     Display questions when view loaded
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    /**
     Action called when you touch the information button.
     */
    @IBAction func onHintButtonTouch() {
    }
    
    /**
     Action called when you pinch the screen with two fingers.
     */
    @IBAction func onScreenPinch(_ sender: UIPinchGestureRecognizer) {
    }
    
    /**
     Action called when you touch an answer.
     */
    @IBAction func onAnswerTouch(_ sender: UIButton) {
    }
    
}

