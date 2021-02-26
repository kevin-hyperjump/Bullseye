//
//  Game.swift
//  Bullseye
//
//  Created by Kevin Hermawan on 26/02/21.
//

import Foundation

struct Game {
    var target: Int = 42
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        return sliderValue
    }
}
