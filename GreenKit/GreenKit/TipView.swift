//
//  ContentView.swift
//  GreenKit
//
//  Created by Ryan Bascos on 3/27/21.
//

import SwiftUI

struct TipView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Welcome!")
                    .padding()
                    .font(.headline)
                Spacer()
                Text("Tip of the Day:")
                    .padding()
                    .font(.title)
                Spacer()
                Text(pickTip())
                    .padding()
                    .multilineTextAlignment(.center)
                Spacer()
                HStack {
                    VStack {
                        NavigationLink(destination: EcoTimers()) {
                            Image(systemName: "alarm")
                                .padding(.top, 25)
                        }
                        Text("Timers")
                            .foregroundColor(.blue)
                            .padding(.bottom, 10)
                        
                    }
                    VStack {
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
