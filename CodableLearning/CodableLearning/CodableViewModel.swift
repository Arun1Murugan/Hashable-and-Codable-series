//
//  CodableViewModel.swift
//  CodableLearning
//
//  Created by Arun Skyraan on 12/03/23.
//

import Foundation

class CodableViewModel: ObservableObject {
    
    @Published var customer: CustomerModel? = CustomerModel(id: "1", customerName: "Arun", customerPoints: 80, isCustomerPremium: true)
    
    init() {
        getData()
    }
    
    func getData() {
        
        guard let _ = getJSONData() else { return }
        
//        print(data)
//        let jsonString = String(data: data, encoding: .utf8)
//        print(jsonString)
        
    }
    
    func getJSONData() -> Data? {
        let dictionary: [String: Any] = [
            "id" : "1",
            "name" : "Arun",
            "points" : 70,
            "isVerified" : true
        ]
        let jsonData = try? JSONSerialization.data(withJSONObject: dictionary, options: [])
        
        return jsonData
    }
}
