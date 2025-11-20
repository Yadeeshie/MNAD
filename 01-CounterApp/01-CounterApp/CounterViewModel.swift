//
//  CounterViewModel.swift
//  01-CounterApp
//
//  Created by Yadeesha Karunathilake on 2025-11-20.
//

import Observation
import SwiftUI

@Observable
class CounterViewModel {
    
    @AppStorage("countValue") private var count = 0
    private var message: String = ""
    
    let maxLimit = 10
    let minLimit = 0
    
    func incremnent() {
        if count < maxLimit {
            count += 1
            message = ""
        } else {
            message = "Can't go up more than 10! ⬆️"
        }
    }
    
    func decrement() {
        if count > minLimit {
            count -= 1
            message = ""
        } else {
            message = "Can't go down more than 0! ⬇️"
        }
    }
    
    func reset() {
        count = 0
        message = ""
    }
}
