//
//  Landmark.swift
//  Landmarks
//
//  Created by Denis Bystruev on 9/16/23.
//

import CoreLocation
import SwiftUI

struct Landmark: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude,
                               longitude: coordinates.longitude)
    }
    
    struct Coordinates: Codable, Hashable {
        var latitude: Double
        var longitude: Double
    }
}
