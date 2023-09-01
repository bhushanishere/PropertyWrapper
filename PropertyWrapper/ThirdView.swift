//
//  ThirdView.swift
//  PropertyWrapper
//
//  Created by Bhushan  Borse on 01/09/23.
//

import SwiftUI

struct ThirdView: View {
    
    @EnvironmentObject var user : User
    @EnvironmentObject var account : Account
    
    var body: some View {
        Text("Got the text from First View is = \(user.name) with account balance is = \(account.balance)")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(User())
            .environmentObject(Account())
    }
}
