//
//  ContentView.swift
//  LandmarkBookWithSwiftUI
//
//  Created by Semih Kalaycı on 8.09.2021.
//
import SwiftUI

struct DetailsView: View {
    
    var choosenlandmark : LandmarkModel
    
    var body: some View {
        VStack{
            
            MapView(coordinate: choosenlandmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)// yukardaki çentiğide kapsa diye
                .frame(height: UIScreen.main.bounds.height * 0.3)
            CircleImageView(image: Image("pissa"))
                .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(y:UIScreen.main.bounds.height * -0.2)
                .padding(.bottom, -UIScreen.main.bounds.height)//- padding vererek aslında haritanın sınırlarına dayanmış oldu
            
            VStack(alignment: .leading){
                Text(choosenlandmark.name)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                HStack{
                    Text(choosenlandmark.country)
                        .font(.subheadline)
                        Spacer()
                    Text(choosenlandmark.category)
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenlandmark: eiffelLandmark)
    }
}
