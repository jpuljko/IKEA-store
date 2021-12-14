//
//  IKEAStoreApp.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import SwiftUI

@main
struct IKEAStoreApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Store())
        }
    }
}
