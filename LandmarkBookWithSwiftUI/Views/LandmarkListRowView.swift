//
//  LandmarkListRowView.swift
//  LandmarkBookWithSwiftUI
//
//  Created by Semih Kalaycı on 8.09.2021.
//

import SwiftUI

struct LandmarkListRowView: View {
    
    var landmark : LandmarkModel
    
    var body: some View {
        HStack{
            LandmarkListRowImageView(landmarkImageName: landmark.imageName)
            Text(landmark.name)
        }
    }
}

struct LandmarkListRowView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRowView(landmark: eiffelLandmark)
    }
}
