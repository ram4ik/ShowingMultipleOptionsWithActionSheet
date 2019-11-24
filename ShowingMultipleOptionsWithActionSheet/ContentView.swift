//
//  ContentView.swift
//  ShowingMultipleOptionsWithActionSheet
//
//  Created by Ramill Ibragimov on 24.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingActionSheet = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        Text("Pick new Color!")
            .frame(width: 300, height: 300)
            .background(backgroundColor)
            .onTapGesture {
                self.showingActionSheet = true
        }
        .actionSheet(isPresented: $showingActionSheet) {
            ActionSheet(title: Text("Change background"), message: Text("Select a new color"), buttons: [
                .default(Text("Red")) {self.backgroundColor = .red},
                .default(Text("Green")) {self.backgroundColor = .green},
                .default(Text("Blue")) {self.backgroundColor = .blue},
                .cancel()
            ])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
