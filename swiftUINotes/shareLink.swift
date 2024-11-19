//
//  shareLink.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/19/24.
//

import SwiftUI

struct shareLink: View {
    var body: some View {
        //MARK: Share image from web
        ShareLink(item: URL(string: "https://www.solarsystemscope.com/textures/download/2k_venus_surface.jpg")!){
            Label("Share Image", systemImage: "square.and.arrow.up")
        }
        
        let image = Image(.bowl)
                //OR
        let i = Image("bowl")
        
        //MARK: Share image from App
        ShareLink(item: image, preview: SharePreview("bowl of lunch", image: i)){
            ///'preview' will used for what preview used while shaing
            Text("Share Image")
        }
    }
}

#Preview {
    shareLink()
}
