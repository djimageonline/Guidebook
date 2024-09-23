//
//  ContentView.swift
//  Guidebook
//
//  Created by Johnny Proano on 9/22/24.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea()
        .onAppear{
            cities = dataService.getData()
        }
    }
}

#Preview {
    CityView()
}
