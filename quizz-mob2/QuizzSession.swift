//
//  QuizSession.swift
//  Quiz
//
//  Created by Pascal Hurni on 17.02.16.
//  Copyright (c) 2016 Pascal Hurni. All rights reserved.
//

import Foundation

class QuizSession {
    
    fileprivate var questions: [Question]
    fileprivate var currentIndex: Int
    
    public var score: Score
    
    public var questionsCount: Int {
        return questions.count
    }
    
    public var questionIndex: Int {
        return currentIndex
    }
    
    init() {
        questions = [
            Question(
                caption: "2+2",
                answers: ["1", "2", "4"],
                correctAnswer: "4",
                hint: "Tutu 1"),
            Question(
                caption: "Meaning of life?",
                answers: ["God", "42", "Me"],
                correctAnswer: "42",
                hint: "Tutu 2"),
            Question(
                caption: "May the Force be with you",
                answers: ["Star wars", "Forest Gump", "American pie"],
                correctAnswer: "Star wars",
                hint: "Tutu 3")
        ]
        
        score = Score()
        
        currentIndex = -1;
    }
    
    func nextQuestion() -> Question? {
        if currentIndex+1 >= questions.count {
            return nil
        }
        else {
            currentIndex += 1
            return questions[currentIndex]
        }
    }
    
    func checkAnswer(_ answer: String) -> Bool {
        if questions[currentIndex].isCorrectAnswer(answer) {
            score.incrementScore()
            return true
        }
        return false
    }
    
}
