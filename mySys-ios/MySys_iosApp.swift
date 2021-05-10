//
//  mySys_iosApp.swift
//  mySys-ios
//
//  Created by mbcangst on 10/05/21.
//

import SwiftUI

@main
struct MySys_iosApp: App {
    @StateObject var demandViewModel: DemandViewModel = DemandViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(demandViewModel)
        }
    }
}
