//
//  CodableDataModel.swift
//  CodableLearning
//
//  Created by Arun Skyraan on 12/03/23.
//

import Foundation

struct CustomerModel: Identifiable {
    let id: String
    let customerName: String
    let customerPoints: Int
    let isCustomerPremium: Bool
}
