//
//  Question.swift
//  Quizzler
//
//  Created by Francis Jemuel Bergonia on 17/04/2018.
//

import Foundation

class Question {
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
