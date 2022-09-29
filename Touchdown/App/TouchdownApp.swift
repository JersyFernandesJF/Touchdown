//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Jersy Fernandes on 05/09/2022.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
