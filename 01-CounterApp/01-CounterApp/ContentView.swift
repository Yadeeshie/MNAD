//
//  ContentView.swift
//  01-CounterApp
//
//  Created by Yadeesha Karunathilake on 2025-11-20.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = CounterViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Counter App 🧮")
                .font(.largeTitle)
                .bold()
            Text ("Count is: \(viewModel.count)")
                .font(.system(size: 25))
                .italic()
            
            Text(viewModel.message)
                .foregroundStyle(.gray)
                .font(.headline)
            
            HStack(spacing:20) {
                Button("-") {
                    viewModel.decrement()
                }
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .tint(.red)
                
                Button("+"){
                    viewModel.incremnent()
                }
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .tint(.green)
            }
            
            .padding()
            
            Button("Reset"){
                viewModel.reset()
            }
            .font(.system(size: 20))
            .buttonStyle(.borderedProminent)
            .tint(.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
