//
//  asyncImageD.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/19/24.
//

import SwiftUI

struct asyncImageD: View {
    private var images = [
        "https://www.solarsystemscope.com/textures/download/2k_venus_surface.jpg",

          "https://www.solarsystemscope.com/textures/download/2k_mercury.jpg"      ]
    var body: some View {
        ForEach(images, id: \.self){ image in
            VStack{
                AsyncImage(url: URL(string: image)){ item in
                    ///URL(string... will convert string into url & asyncImage will load image async
                    if let downloadImage = item.image {
                        downloadImage
                            .resizable()
                            .scaledToFill()
                            .padding()
                    } else if (item.error != nil) {
                        Text("Error in loading image")
                        
                    } else{
                        ///We can also put some default image untill our main will download
                        ProgressView()
                            .progressViewStyle(.automatic)
                    }
                                        
                }
                .frame(width: 200, height: 200)
            }
            
        }


    }
}

#Preview {
    asyncImageD()
}
