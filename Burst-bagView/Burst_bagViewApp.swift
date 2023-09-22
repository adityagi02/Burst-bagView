//
//  Burst_bagViewApp.swift
//  Burst-bagView
//
//  Created by Aditya Tyagi  on 22/09/23.
//

/// `1.7 My Bag`
/// When user taps the “Bag” icon, an overlay modal slides down and when closed, the user is back in the original screen he/she was on.

import SwiftUI

@main
struct Burst_bagViewApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(numberOfItems: 3)
        }
    }
}
