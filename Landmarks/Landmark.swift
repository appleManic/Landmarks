//
//  Landmark.swift
//  Landmark
//
//  Created by Pawan Selokar on 8/1/16.
//  Copyright © 2016 Pawan Selokar. All rights reserved.
//
import Foundation

struct Landmark {
    var landmarkLabels: [String]
    var title: String
    var photoString: [String]
    
    
    init(landmarkLabels: [String] , title: String , photoString: [String]) {
        self.landmarkLabels = landmarkLabels
        self.title = title
        self.photoString = photoString
        
    }
    
    func printDescription() {
        print("Title: \(self.title)");
        print("Labels: \(self.landmarkLabels)");
        print("photos: \(self.photoString)");
    }
}

enum LandmarkLabels: String {
    case Mountains, Beach, Meadow, Urban, CountrySide,River
}

struct LandmarkData {
    var landmarks = [
        Landmark(landmarkLabels: [LandmarkLabels.Beach.rawValue, LandmarkLabels.Meadow.rawValue, LandmarkLabels.CountrySide.rawValue], title: "Wayland", photoString: ["imageq"]),
        Landmark(landmarkLabels: [LandmarkLabels.Beach.rawValue, LandmarkLabels.CountrySide.rawValue, LandmarkLabels.River.rawValue], title: "Boston", photoString: ["BosImage1", "BosImage2"]),
        Landmark(landmarkLabels: [LandmarkLabels.Urban.rawValue, LandmarkLabels.Mountains.rawValue, LandmarkLabels.River.rawValue], title: "Waltham", photoString: ["walImage1", "walImage2"]),
        ]
}


