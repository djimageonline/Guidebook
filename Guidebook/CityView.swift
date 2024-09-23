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
        
        ScrollView {
            VStack {
                ForEach(cities) { city in
                    Text(city.name)
                }
            }
            .padding()
            .onAppear{
                cities = dataService.getData()
            }
        }
    }
}

#Preview {
    CityView()
}
