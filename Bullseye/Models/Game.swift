//
//  Game.swift
//  Bullseye
//
//  Created by Kevin Hermawan on 26/02/21.
//

import Foundation

struct Game {
    var target = 42
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(self.target - sliderValue)
    }
}
