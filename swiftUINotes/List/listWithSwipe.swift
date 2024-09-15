//
//  listWithSwipeAction.swift
//  swiftUi-Notes
//
//  Created by Ritik Karma on 12/08/24.
//

import SwiftUI

struct listWithSwipe: View {
    @State var total = 0
    var body: some View {
        NavigationStack{
            Text("\(total)")
                .font(.largeTitle)
                .fontWeight(.black)
            List{
                ForEach(1...50, id: \.self){ i in
                    Text("\(i)")
                        .swipeActions(edge: .leading) {
                            Button(){
                                total += i
                            } label: {
                                Image(systemName: "plus.circle")
                                    .tint(.green)
                                ///tint modifire mostly used here only
                            }
                        }
                        .swipeActions(edge: .trailing) {
                            Button(){
                                total -= i
                            } label: {
                                Image(systemName: "minus.circle")
                                    .tint(.red)
                                
                            }
                            Button(){
                                
                            } label: {
                                Image(systemName: "face.smiling")
                                    .tint(.indigo)
                                
                                
                            }
                            
                            
                        }
                }
                
                
            }
            
        }
    }
}

#Preview {
    listWithSwipe()
}
