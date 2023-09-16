//
//  ContentView.swift
//  Landmarks
//
//  Created by Denis Bystruev on 9/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)",
                 "iPhone 14 Pro Max",
                 "iPad (10th generation)",
                 "My Mac"],
                id: \.self) { deviceName in
            ContentView()
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
