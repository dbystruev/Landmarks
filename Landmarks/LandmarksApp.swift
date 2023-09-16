//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Denis Bystruev on 9/15/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
