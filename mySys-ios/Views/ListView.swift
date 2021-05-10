//
//  ContentView.swift
//  mySys-ios
//
//  Created by mbcangst on 10/05/21.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var demandViewModel: DemandViewModel
    
    var body: some View {
        ZStack {
            List {
                ForEach(demandViewModel.demands) { demand in
                    ListRowView(item: demand)
                        .onTapGesture {
                            withAnimation(.linear) {
                                demandViewModel.createDemand(item: demand)
                            }
                        }
                }
            }
            
        }
        .navigationTitle("Demands")
    }
}

struct listView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(DemandViewModel())
    }
}
