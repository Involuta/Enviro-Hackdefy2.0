//
//  ContentView.swift
//  GreenKit
//
//  Created by Karsten Assoua on 3/27/21.
//
import SwiftUI
import UserNotifications

let recyclable:Array = ["aluminun cans", "newspapers", "some glass containers"]
// We need to take a random value from the recyclable list every time the Recyclables tip is called.
let charity:Array = ["Greenpeace", "Friends of the Earth", "Earthjustice", "Rainforest Alliance", "Ocean Conservancy", "The Sierra Club Foundation", "the Humane Society", "the Earth Island Institute", "the Natural Resources Defense Council", "the Environmental Working Group", "the Natural Resources Defense Council", "the Union of Concerned Scientists"]
// We need to take a random value from the charity list every time the Charities tip is called.
let defaultValue = "default value"

let environmentalTips:Array = ["You can cut down on carbon emissions by walking or biking to work and school!", "Try out carpooling!", "Did you know that \(recyclable.randomElement() ?? defaultValue) are recyclable?", "Consider starting a compost pile!", "Consider donating to \(charity.randomElement() ?? defaultValue) today.", "Try shopping virtually, from the convenience of your home.", "Try leftovers instead of eating out tomorrow!", "If you can, use public transit today.", "Make sure to recycle!", "Choose paper over plastic today.", "Printing a document? Use both sides of the paper.", "Use reusable batteries!", "Don’t waste: give to charities and food banks.", "Good day!. Remember to turn on the faucet only when you need it!", "Try to turn the lights off if you’re not in the room.", "Use low energy light bulbs like compact fluorescent lamps.", "Switch off appliances when you’re not using them.", "Make sure your plumbing has no leaks.", "Use short cycles when bulbs clothes.", "Take short showers (use our timers!).", "Try walking to places nearby.", "Eat local, organic, sustainable food.", "Avoid using plastic bottled water."]

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }

            Button("Recieve Environmental Tips") {
                let content = UNMutableNotificationContent()
                content.title = "Environmental Tip"
                content.subtitle = ("Tip: \(environmentalTips.randomElement()!)") //Have no idea what the exclam after randomElement() does.
                content.sound = UNNotificationSound.default

                // show this notification sixty seconds from now ONLY when app is inactive
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)

                // choose a random identifier
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                // add our notification request
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
