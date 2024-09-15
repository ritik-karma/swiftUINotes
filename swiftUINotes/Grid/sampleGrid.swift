///
//  sampleGrid.swift
//  swiftUiBasics
//
//  Created by Ritik Karma on 29/01/24.
//

import SwiftUI

struct sampleGrid: View {
    let clickedImageNum: Int
    let columns: [GridItem] = [
        .init(.flexible(), spacing: 1),///init refers to a column
        .init(.flexible(), spacing: 1),
        .init(.flexible())
    ]
    let samples = ["meal","vegBowl", "pastry", "pizza","sandwich","apple","casual_male"]
    
    /// substract 2 when we add 1 pixel of spacing on each horizontal edge
    let dimensions = (UIScreen.main.bounds.width / 3) - 2 ///this will store the width of the screen / 3 (of any device we are using)
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 1) ///spacing will apply to between grids vertically
            {
                ForEach(samples, id: \.self ) {i in
                    Image(i)
                        .resizable()
                        .scaledToFill()
                        .frame(width: dimensions, height: dimensions)
                        .clipShape(Rectangle())
                
                }
            }
        }
        .padding(.horizontal, 2 )
        Text("Clicked \(clickedImageNum)")
    }
}


//#Preview {
//    sampleGrid(clickedImageNum: i)
//}
