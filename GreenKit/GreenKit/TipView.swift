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
                Text("Welcome!")
                    .padding()
                    .padding(.top, 20)
                    .font(.custom("Avenir Next", size: 25, relativeTo: .headline))
                Spacer()
                Text("Tip of the Day:")
                    .padding()
                    .font(.custom("Avenir Next", size: 40, relativeTo: .title))
                Spacer()
                Text(pickTip())
                    .padding()
                    .font(.custom("Avenir Next", size: 17.5, relativeTo: .body))
                    .multilineTextAlignment(.center)
                Spacer()
                Spacer()
                HStack {
                    VStack {
                        NavigationLink(destination: EcoTimers()) {
                            Image(systemName: "alarm")
                                .padding(.top, 25)
                        }
                        Text("Timers")
                            .foregroundColor(.blue)
                            .padding(.bottom, 20)
                        
                    }
                    VStack {
                        
                    }
                }
            }
        }
    }
}

struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
