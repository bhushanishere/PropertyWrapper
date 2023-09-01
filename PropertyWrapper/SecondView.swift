//
//  SecondView.swift
//  PropertyWrapper
//
//  Created by Bhushan  Borse on 01/09/23.
//

import SwiftUI

struct SecondView: View {
    
    @EnvironmentObject private var account: Account

    
    var body: some View {
        NavigationView {
            VStack {

                Stepper("Balance \(account.balance)", value: $account.balance)
                NavigationLink("NextTo3rdView", destination: ThirdView())
            }.padding()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(Account())
    }
}
