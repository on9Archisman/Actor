//
//  Flight.swift
//  Actor
//
//  Created by Archisman on 14/07/25.
//

import Foundation

actor Flight {
    let airline = "Air India"
    var availableSeats = ["1A", "1B", "1C", "2A", "2B", "2C"]
    
    func getAvailableSeats() -> [String] {
        availableSeats
    }
    
    func bookSeats() -> String {
        guard let seat = availableSeats.first else {
            return "No seats available"
        }
        
        availableSeats.removeFirst()
        
        return seat
    }
}
