/*
//
//  TipPicker.swift
//  GreenKit
//
//  Created by Karsten Assoua on 3/27/21.
//

import UIKit
 
// appRunning while loop
 
// Environmental Tips
// These will be dispensed through a notification system.
var recyclable = ["aluminun cans", "newspapers", "glass containers"]
// We need to take a random value from the recyclable list every time the Recyclables tip is called.
 
var charity = ["Greenpeace", "Friends of the Earth", "Earthjustice", "Rainforest Alliance", "Ocean Conservancy", "The Sierra Club Foundation", "the Humane Society", "the Earth Island Institute", "the Natural Resources Defense Council", "the Environmental Working Group", "the Natural Resources Defense Council", "the Union of Concerned Scientists", "Team Trees"]
// We need to take a random value from the charity list every time the Charities tip is called.
// Link to these charities through the notification?
// Donation notifications should be infrequent.
 
var day_time = ["morning", "afternoon", "evening", "night"]
// We need to take a random value from the daytime list every time the Charities tip is called.
 
var defaultValue = "Everything counts!"
 
let environmentalTips = ["You can cut down on carbon emissions by walking or biking to work and school!", "Try out carpooling!", "Did you know that \(recyclable.randomElement() ?? defaultValue) are recyclable?", "Consider starting a compost pile!", "Consider donating to \(charity.randomElement() ?? defaultValue) today.", "Try shopping virtually, from the convenience of your home.", "Try leftovers instead of eating out tomorrow!", "If you can, use public transit today.", "Make sure to recycle!", "Choose paper over plastic today.", "Printing a document? Use both sides of the paper.", "Use reusable batteries!", "Don’t waste: give to charities and food banks.", "Good \(day_time.randomElement() ?? defaultValue). Remember to turn on the faucet only when you need it!", "Try to turn the lights off if you’re not in the room.", "Use low energy light bulbs like compact fluorescent lamps.", "Switch off appliances when you’re not using them.", "Make sure your plumbing has no leaks.", "Use short cycles when washing clothes.", "Take short showers (use our timers!).", "Try walking to places nearby.", "Eat local, organic, sustainable food.", "Avoid using plastic bottled water.", "Reduce the temperature on your heating system's thermostat.", "Keep your curtains closed during hot days to reduce cooling costs",  "Pick up after your pet", "Switch to shampoo and conditioner bars to reduce the use of plastic", "Buy more things at once to avoid excess packaging", "Cut back on single serving/single use products"]
 
var used_env_tips: [String] = []
/*
func pickTip() -> String {
    var tempTip = ""
    for tip in environmentalTips.shuffled() {
        if used_env_tips.contains(tip) {
            continue // If the tip has been used, we pass over and continue the loop.
        } else if !(used_env_tips.contains(tip)) && environmentalTips.contains(tip) {
            used_env_tips.append(tip)
            tempTip = tip
        }
    }
    return tempTip
}
 */
*/
func pickTip() -> String {
    let tempTip = environmentalTips.randomElement() ?? defaultValue
    return tempTip
}
