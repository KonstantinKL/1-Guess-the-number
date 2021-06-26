//
//  checkData.swift
//  1 Guess the number
//
//  Created by Константин Крашенинников on 26.06.2021.
//

import Foundation

struct CheckData {
    
    var a = Int.random(in: 0...100)
    var output = ""
    mutating func checkAnswer (numberByUser: Int) -> String {
        if a == numberByUser {
            output = "Угадал!"
        } else if a < numberByUser {
            output = "Много!"
        } else if a >  numberByUser {
            output = "Мало!"
        }
        return output
    }
}
