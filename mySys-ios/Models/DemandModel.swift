//
//  demands.swift
//  mySys-ios
//
//  Created by mbcangst on 10/05/21.
//

import Foundation

struct DemandModel: Identifiable, Codable {
    let id: String
    let title: String
    let describe: String
    
    init(id: String = UUID().uuidString, title: String, describe: String) {
        self.id = id
        self.title = title
        self.describe = describe
    }
    
    func createDemand() -> DemandModel {
        return DemandModel(id: id, title: title, describe: describe)
    }
}
