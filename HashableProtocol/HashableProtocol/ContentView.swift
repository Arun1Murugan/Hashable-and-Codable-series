//
//  ContentView.swift
//  HashableProtocol
//
//  Created by Arun Skyraan on 11/03/23.
//

import SwiftUI

struct MyCustomDataModel: Hashable {
    
    var title1: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title1)
    }
    
}

struct ContentView: View {
    
    @State var data: [MyCustomDataModel] = [
        MyCustomDataModel(title1: "Title1"),
        MyCustomDataModel(title1: "Title2"),
        MyCustomDataModel(title1: "Title3"),
        MyCustomDataModel(title1: "Title4"),
        MyCustomDataModel(title1: "Title5"),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(data, id: \.self) { item in
                    VStack {
                        Text(item.title1)
                            .padding()
                        Text(item.hashValue.description)
                    }
                }
            }
            .navigationTitle("Hashable Protocol")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
