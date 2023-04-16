//
//  ContentView.swift
//  CodableLearning
//
//  Created by Arun Skyraan on 12/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var customervm = CodableViewModel()
    
    var body: some View {
        VStack {
            if let customer = customervm.customer {
                Text(customer.id)
                Text(customer.customerName)
                Text("\(customer.customerPoints)")
                Text(customer.isCustomerPremium.description)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
