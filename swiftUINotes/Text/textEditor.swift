//
//  textEditor.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 07/08/24.
//

import SwiftUI

struct textEditor: View {
    @State var iphoneText = "hii my name is khan"
    @State var isDisable = false
    @State var isPresented = true
    var body: some View {
        NavigationStack{
            TextEditor(text: $iphoneText)
                .findDisabled(isDisable)// can't search (can be disable or en.. by state )
                .replaceDisabled()
                .findNavigator(isPresented: $isPresented) ///used for find & replace
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .navigationTitle("text editior")
                .padding()
                .toolbar{
                    Toggle(isOn: $isPresented) {
                        Label("Find", systemImage: "magnifyingglass")
                    }
                }
        }
    }
}

#Preview {
    textEditor()
}
