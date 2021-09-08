//
//  LandmarkListView.swift
//  LandmarkBookWithSwiftUI
//
//  Created by Semih Kalaycı on 8.09.2021.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView{
            List(landmarkArray){landmark in
                NavigationLink(
                    destination: DetailsView(choosenlandmark: landmark),
                    label: {
                        LandmarkListRowView(landmark: landmark)
                    })
            
            }.navigationBarTitle(Text("Landmark Book"))
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
