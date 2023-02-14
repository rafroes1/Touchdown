//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Rafael Carvalho on 14/02/23.
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
