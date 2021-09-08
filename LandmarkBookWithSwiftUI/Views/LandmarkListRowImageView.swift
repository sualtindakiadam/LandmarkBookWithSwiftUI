//
//  LandmarkListRowImageView.swift
//  LandmarkBookWithSwiftUI
//
//  Created by Semih Kalaycı on 8.09.2021.
//

import SwiftUI

struct LandmarkListRowImageView: View {
    
    var landmarkImageName : String
    var body: some View {
        Image(landmarkImageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50, alignment: .leading)
        
    }
}

struct LandmarkListRowImageView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRowImageView(landmarkImageName:"pissa")
    }
}
