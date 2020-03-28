//
//  ContentView.swift
//  iExpense
//
//  Created by Al Amin on 28/3/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var user = User()
    var body: some View {
        VStack(spacing: 10){
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
                .cornerRadius(10)
            TextField("Second Name", text: $user.lastName)
        }
    .padding()
    }
}

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
