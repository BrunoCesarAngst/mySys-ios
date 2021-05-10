//
//  ListViewModel.swift
//  mySys-ios
//
//  Created by mbcangst on 10/05/21.
//

import Foundation

class DemandViewModel: ObservableObject {
    //
    @Published var demands: [DemandModel] = [] {
        didSet {
            savedDemands()
        }
    }
    
    let demandsKey: String = "demands_list"
    
    init() {
        getDemands()
    }
    
    func getDemands() {
        guard
            let data = UserDefaults.standard.data(forKey: demandsKey)
            let savedDemands = try? JSONDecoder().decode([DemandModel].self, from: data)
        else { return }
        
        self.demands = savedDemands
    }
    
    func addDemand(title: String, describe: String) {
        let newDemand = DemandModel(title: title, describe: describe)
        demands.append(newDemand)
    }
    
    func createDemand(item: DemandModel) {
        if let index = demands.firstIndex(where: { $0.id == item.id }) {
            demands[index] = item.createDemand()
        }
    }
    
    func savedDemands() {
        if let encodedData = try? JSONEncoder().encode(demands) {
            UserDefaults.standard.set(encodedData, forKey: demandsKey)
        }
    }
}
