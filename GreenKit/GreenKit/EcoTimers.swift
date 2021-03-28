//
//  EcoTimers.swift
//  GreenKit
//
//  Created by Ryan Bascos on 3/27/21.
//

import SwiftUI

struct EcoTimers: View {
    var presets = ["Shower (10 min)", "Washing dishes (15 min)", "Sprinklers (20 min)"]
    @State private var selectedPreset = "Shower (10 min)"
    @State private var mins: Double = 5
    @State private var secs: Double = 0
    @State private var timeRemaining: Double = 0
    var body: some View {
        VStack {
            Spacer()
            Text("Set a timer or use a preset")
                .font(.title)
                .multilineTextAlignment(.center)
            Spacer()
            Text("\(timeRemaining, specifier: "%.1f")")
                .font(.title)
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("Min: \(mins, specifier: "%.1f")")
                        .font(.title)
                    Slider(value: $mins, in: 0...120)
                }
                Spacer()
                VStack {
                    Text("Sec: \(secs, specifier: "%.1f")")
                        .font(.title)
                    Slider(value: $secs, in: 0...59)
                }
                Spacer()
            }
            Picker("Pick a preset", selection: $selectedPreset) {
                ForEach(presets, id: \.self) {
                    Text($0)
                }
            }
            //Put timer screen in separate View
            Text("Current preset: \(selectedPreset)")
            
        }
    }
}

struct EcoTimers_Previews: PreviewProvider {
    static var previews: some View {
        EcoTimers()
    }
}
