//
//  SecondViewController.swift
//  Actor
//
//  Created by Archisman on 14/07/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lblSeatName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let queue1 = DispatchQueue(label: "actorDemo_2.1", attributes: .concurrent)
        let queue2 = DispatchQueue(label: "actorDemo_2.2", attributes: .concurrent)
        
        let objFlight = Flight()
        
        queue1.async {
            Task { [weak self] in
                guard let self = self else { return }
                let seat = await objFlight.bookSeats()
                print("Booked seat is \(seat)")
                self.displaySeatOnScreen(seat)
            }
        }
        
        queue2.async {
            Task {
                print("Available seats are \(await objFlight.availableSeats)")
            }
        }
    }
    
    @MainActor
    func displaySeatOnScreen(_ seat: String) {
        lblSeatName.text = "Seat Name: \(seat)"
    }
    
    @IBAction func actionNextPage(_ sender: UIButton) {
        // Done via storyboard
    }
}
