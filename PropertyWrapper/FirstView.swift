//
//  FirstView.swift
//  PropertyWrapper
//
//  Created by Bhushan  Borse on 01/09/23.
//

import SwiftUI

struct FirstView: View {
    
    @ObservedObject private var user: User = User()
    @ObservedObject private var account: Account = Account()

    var body: some View {
        NavigationStack {
            VStack {
                Text("User Name is = \(user.name)")
                
                TextField("user", text: $user.name)
                    .textFieldStyle(.roundedBorder)

                NavigationLink("Next", destination: SecondView())
            }.padding()
                .navigationTitle("Property Wrapper")
        }.environmentObject(user)
            .environmentObject(account)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
