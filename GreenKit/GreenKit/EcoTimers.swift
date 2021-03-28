//
//  EcoTimers.swift
//  GreenKit
//
//  Created by Ryan Bascos on 3/27/21.
//

import SwiftUI

struct EcoTimers: View {
    var presets = ["Shower (10 min)", "Washing dishes (15 min)", "Sprinklers (20 min)"]
    @State private var shower = false
    @State private var washingDishes = false
    @State private var sprinklers = false
    @State private var selectedPreset = "Shower (10 min)"
    @State private var mins: Double = 5
    @State private var secs: Double = 0
    @State private var timeRemaining: Double = 0
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("Set a timer or use a preset")
                    .font(.custom("Avenir Next", size: 20, relativeTo: .title))
                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("\(mins+secs, specifier: "%.02f")")
                    .font(.custom("Avenir Next", size: 40, relativeTo: .title))
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Min: \(mins, specifier: "%.02f")")
                            .font(.custom("Avenir Next", size: 24, relativeTo: .title))
                        Slider(value: $mins, in: 0...120)
                    }
                    Spacer()
                    VStack {
                        Text("Sec: \(secs, specifier: "%.02f")")
                            .font(.custom("Avenir Next", size: 25, relativeTo: .title))
                        Slider(value: $secs, in: 0...59)
                    }
                    Spacer()
                }
                Spacer()
                VStack (alignment: .leading) {
                    Toggle("Shower (10 min)", isOn: $shower)
                    Toggle("Washing dishes (15 min)", isOn: $washingDishes)
                    Toggle("Sprinnklers (20 min)", isOn: $sprinklers)
                }
                .padding()
                VStack {
                    Spacer()
                    Button(action: {
                        if shower || washingDishes || sprinklers {
                            timeRemaining = 0
                        }
                    }) {
                        Text("Update & Start Timer")
                            .font(.custom("Avenir Next", size: 20, relativeTo: .body))
                    }
                    Spacer()
                }
            }
        }
    }
}

struct EcoTimers_Previews: PreviewProvider {
    static var previews: some View {
        EcoTimers()
    }
}
