//
//  PhoneStocks.swift
//  Actor
//
//  Created by Archisman on 14/07/25.
//

import Foundation
import UIKit

actor PhoneStocks {
    
    var stocks : Array<String> = ["iPhone 13", "iPhone 12", "iPhone 11", "iPhone XS", "iPhone XR"]
    
    func getAvailableStrocks() {
        print("Available Stocks: \(stocks)")
    }
    
    func purchasePhone(phone: String) {
        guard let index = self.stocks.firstIndex(of: phone) else {
            print("No such phone in the stock")
            return
        }
        
        self.stocks.remove(at: index)
        
        print("Congratulations, You have successfully purchased \(phone)")
        
        // getAvailableStrocks()
    }
}
