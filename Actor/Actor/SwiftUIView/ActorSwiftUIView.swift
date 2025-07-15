//
//  ActorSwiftUIView.swift
//  Actor
//
//  Created by Archisman on 15/07/25.
//

import SwiftUI

/*
class Counter {
    var value = 0
    
    func increment() -> Int {
        value += 1
        return value
    }
}
*/

actor Counter {
    var value = 0
    
    func increment() -> Int {
        value += 1
        return value
    }
}

struct ActorSwiftUIView: View {
    var body: some View {
        Button("Tap me - Actor") {
            
            let objCounter = Counter()
            
            /*
            DispatchQueue.concurrentPerform(iterations: 100) { _ in
                
                print(objCounter.increment())
            }
            */
            
            DispatchQueue.concurrentPerform(iterations: 100) { _ in
                
                Task {
                    print(await objCounter.increment())
                }
            }
        }
    }
}

#Preview {
    ActorSwiftUIView()
}
