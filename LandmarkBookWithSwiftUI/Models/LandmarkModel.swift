//
//  LandmarkModel.swift
//  LandmarkBookWithSwiftUI
//
//  Created by Semih Kalaycı on 8.09.2021.
//
import SwiftUI
import CoreLocation

struct LandmarkModel: Identifiable {
    var id : Int
    var name : String
    var imageName: String
    var country: String
    var category: String
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.lat, longitude: coordinates.long)
    }
}

struct Coordinates {
    var lat: Double
    var long: Double
}


let eiffelLandmark = LandmarkModel(id: 0, name: "Eifel", imageName: "eifel", country: "France", category: "Tower", coordinates: Coordinates(lat: 48.858093, long: 2.294694))

let pissaandmark = LandmarkModel(id: 1, name: "Pissa", imageName: "pissa", country: "Italy", category: "Tower", coordinates: Coordinates(lat: 43.7230, long: 10.3966))


let landmarkArray = [eiffelLandmark,pissaandmark]
