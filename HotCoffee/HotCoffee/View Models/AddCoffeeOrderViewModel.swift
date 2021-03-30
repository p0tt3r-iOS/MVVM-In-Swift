//
//  AddCoffeeOrderViewModel.swift
//  HotCoffee
//
//  Created by 하동훈 on 2021/03/30.
//

import Foundation

struct AddCoffeeOrderViewModel {
    var name: String?
    var email: String?
    
    var type: String?
    var size: String?
    
    var types: [String] {
        return CoffeeType.allCases.map { $0.rawValue.capitalized }
    }
    
    var sizes: [String] {
        return CoffeeSize.allCases.map { $0.rawValue.capitalized }
    }
}
