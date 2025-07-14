//
//  FirstViewController.swift
//  Actor
//
//  Created by Archisman on 14/07/25.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let queue = DispatchQueue(label: "actorDemo", attributes: .concurrent)
        let objPhoneStocks = PhoneStocks()
        
        queue.async {
            Task {
                await objPhoneStocks.purchasePhone(phone: "iPhone 11")
            }
        }
        
        queue.async {
            Task {
                await objPhoneStocks.getAvailableStrocks()
            }
        }
    }
    
    @IBAction func actionNextPage(_ sender: UIButton) {
        // Done via storyboard
    }
}

