//
//  ContentView.swift
//  iExpense
//
//  Created by Al Amin on 28/3/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    
    
    @State private var user = SecondView(firstName: "Md", lastName: "Alamin")
   
    var body: some View {
        NavigationView {
            VStack {
                Button("Save User"){
                    let encoder = JSONEncoder()
                    if let data = try? encoder.encode(self.user){
                        UserDefaults.standard.set(data, forKey: "UserData")
                    }
                }
            }
            .navigationBarItems(leading: EditButton())
        }
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
