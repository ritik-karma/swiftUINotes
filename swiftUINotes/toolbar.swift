//
//  listWithButton.swift
//
//
//  Created by Ritik Karma on 22/04/24.
//

import SwiftUI

struct toolbar: View {
    
    
    @State var num: [Int] = []
    @State var nextNum = 1
    @State var showModule = false
    @State var isOk = false
    

    
    func removeRow(offsets: IndexSet){
        num.remove(atOffsets: offsets)
    }
    func addNum(){
        if (num.count < 10){
            num.append(nextNum)
            nextNum += 1
        }
    }

    
    var body: some View {
        NavigationStack{ ///Required to add button in toolbar
            List{
                ForEach(num, id: \.self){
                    Text("Row number: \($0)")
                        .onTapGesture {
                            showModule = true
                        }
                }
                .onDelete(perform: { indexSet in
                    
                   // num.remove(atOffsets: indexSet)
                    ///OR
                    removeRow(offsets: indexSet)
                    
                    ///Now u can delete any row with UI by sliding or editing
                })
                .sheet(isPresented: $showModule){
                    Text("jlksfj;laksjf")
                }
            }
//MARK: Multi toolbar approach
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    if (num.count != 0){
                        EditButton()
                    }
                    
                }
                ToolbarItem(placement: .bottomBar) {
                    Button("Add Number"){
                        addNum()
                    }
                    //Unable to add multi items use toolbar item group
                }
            }
            
            ///Can place toolbar button at any place left or bottom and default is on right top side
            .navigationTitle("Numbers")
            
        }
    }
}


//MARK: single toolbar approch
/*
 .toolbar{
     Toggle(isOn: $isOK) {
         Label("Find", systemImage: "magnifyingglass")
     }
 }
 */

#Preview {
    toolbar()
}
