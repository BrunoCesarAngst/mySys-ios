//
//  InboxDemands.swift
//  mySys-ios
//
//  Created by mbcangst on 10/05/21.
//

import SwiftUI

struct InboxDemands: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var demandViewModel: DemandViewModel
    
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Write your demand here", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add a demand")

    }
}

func saveButtonPressed() {
    if textIsAppropriate() {
        demandViewModel.addDemands()
    }
}

func textIsAppropriate() -> Bool {
    if textFieldText.count < 3 {
        alertTitle = "Your new demand item must be at least 3 characters long!!"
        showAlert.toggle()
        return false

    }
    return true
}

struct InboxDemands_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            InboxDemands()
        }.environmentObject(DemandViewModel())
    }
}
