//
//  ContentView.swift
//  iExpense
//
//  Created by Al Amin on 28/3/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State private var showingSheet = false
    var body: some View {
        Button("Show Second View"){
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Hasan")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
