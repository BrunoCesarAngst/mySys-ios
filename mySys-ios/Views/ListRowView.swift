//
//  ListRowView.swift
//  mySys-ios
//
//  Created by mbcangst on 10/05/21.
//

import SwiftUI

struct ListRowView: View {
    let item: DemandModel
    
    var body: some View {
        HStack {
            Text(item.title)
            Text(item.describe)
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = DemandModel(title: "teste1", describe: "teste11")
    static var item2 = DemandModel(title: "teste2", describe: "teste22")

    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }.previewLayout(.sizeThatFits)
    }
}
