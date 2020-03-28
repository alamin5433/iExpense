//
//  SecondView.swift
//  iExpense
//
//  Created by Al Amin on 28/3/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var name: String
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(name: "Alamin")
        
    }
}
