//
//  Score.swift
//  quizz-mob2
//
//  Created by Bastien Nicoud on 11.02.19.
//  Copyright © 2019 CPNV-ES. All rights reserved.
//

import Foundation

class Score {
    
    fileprivate var _score: Int
    
    var score: Int {
        return _score
    }
    
    init (baseScore: Int = 0) {
        _score = baseScore
    }
    
    func incrementScore (amount: Int = 1) {
        _score += amount
    }
    
    func decrementScore (amount: Int = 1) {
        _score -= amount
    }
    
}
