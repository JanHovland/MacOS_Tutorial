//
//  ContentView.swift
//  MacOS_Tutorial
//
//  Created by Jan Hovland on 15/04/2020.
//  Copyright © 2020 Jan Hovland. All rights reserved.
//

//
//  ContentView.swift
//  Test
//
//  Created by Jan Hovland on 15/04/2020.
//  Copyright © 2020 Jan Hovland. All rights reserved.
//

import SwiftUI

/// Working with custom styles

//struct ContentView: View {
//    @State private var isEnabled = false
//    var body: some View {
//        Toggle(isOn: $isEnabled) {
//            Text("Enable the flux capacitor")
//        }
//        .toggleStyle(SwitchToggleStyle())
//        .padding()
//    }
//}

/// Viser labels, kalender og klokke
//struct ContentView: View {
//    @State private var birthDate = Date()
//    var body: some View {
//        DatePicker("Select your birth date", selection: $birthDate)
//            .datePickerStyle(GraphicalDatePickerStyle())
//    }
//}

/// Viser kun klokken
//struct ContentView: View {
//    @State private var birthDate = Date()
//    var body: some View {
//        VStack(alignment: .center) {
//            DatePicker("Select your birth date", selection: $birthDate, displayedComponents: .hourAndMinute)
//            .datePickerStyle(GraphicalDatePickerStyle())
//            .labelsHidden()
//        }
//    }
//}



/// Her vises Button med: regular, small og mini størrelse
//struct ContentView: View {
//    @State private var birthDate = Date()
//    var body: some View {
//        ForEach(ControlSize.allCases, id: \.self) { size in
//            Button("Click Me") {
//                print("\(size) button pressed") }
//                .controlSize(size) }
//    }
//}

/// Pickers and menu buttons

/// Default picker on macOS
//struct ContentView: View {
//    @State private var selection = 0
//    var body: some View {
//        Picker("Select an option", selection: $selection) {
//            ForEach(0..<5) { number in
//                Text("Option \(number)")
//            }
//        }
//        .pickerStyle(RadioGroupPickerStyle())
//        .padding()
//    }
//}

/// MenuButton gir Option med 2 valg
//struct ContentView: View {
//    @State private var selection = 0
//    var body: some View {
//        MenuButton("Options") {
//            Button("Order coffee") {
//                print("Get me an espresso!")
//            }
//            Button("Log out") {
//                print("TTFN")
//            }
//        }
//        .padding()
//        /// Fjerner hele UI rundt the menu button
//        .menuButtonStyle(BorderlessPullDownMenuButtonStyle())
//    }
//}

/// Handling user interaction

/// Her endres Hover fra rød til grønn når cursor legges over teksten
//struct ContentView: View {
//    @State private var isHovering = false
//    var body: some View {
//        Text("Hello, World!")
//            .foregroundColor(isHovering ? Color.green : Color.red) .padding()
//            .onHover { over in
//                self.isHovering = over
//            }
//    }
//}

/// onExitCommand() og onDeleteCommand()
//struct ContentView: View {
//    @State private var name = ""
//    var body: some View {
//        TextField("Enter your name", text: $name)
//            /// Ved å trykke Esc fra tastatureu
//            .onExitCommand {
//                print("Cancel name entry")
//            }
//  //            /// Ved å trykke på Delete fra Edit menyen (Delete er ikke aktiv som default)
//  //            .onDeleteCommand {
//  //                print("Delete pressed")
//  //            }
//      }
//  }

    /// New Menu Item
    struct ContentView: View {
        @State private var selection = Set<Int>()
        var body: some View {
            List(0..<4, selection: $selection) { num in
                // Text("Row \(num)")
                DetailView(num: num)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) .onCommand(#selector(Commands.showSelection)) {
                print("Selection: \(self.selection)")
            }
        }
    }

    class Commands {
        @IBAction func showSelection(_ sender: Any) { }
    }

    struct DetailView: View {
        var num: Int
        var body: some View {
            Text("DetailView " + "\(num)")
       }
    }

/// Vise flere vinduer
//class DetailWindowController<RootView: View>: NSWindowController {
//    convenience init(rootView: RootView) {
//        let hostingController = NSHostingController(rootView:
//            rootView.frame(width: 300, height: 400))
//        let window = NSWindow(contentViewController:
//            hostingController)
//        window.setContentSize(NSSize(width: 300, height: 400))
//        self.init(window: window)
//    }
//}
//
//struct DetailView: View {
//    var body: some View {
//        Text("Second View")
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        Button("Show New Window") {
//            let controller = DetailWindowController(rootView:
//                DetailView())
//            controller.window?.title = "New window"
//            controller.showWindow(nil)
//        }
//    }
//}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

