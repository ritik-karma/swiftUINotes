//
//  Images.swift
//  swiftUiBasics
//
//  Created by Ritik Karma on 20/01/24.
//

import SwiftUI

struct safeArea: View {
    var body: some View {
        ZStack{
            Image("pastry")
                .resizable()
                .safeAreaInset(edge: .top){
                    Color.blue
                        .frame(height: 8)
                        .background(.red)
                }
            Image(systemName: "house")
               
                .foregroundColor(.white)
                .font(.system(size: 90))
        }
    }
}

struct imageAndSafearea: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(.yellow)
                VStack{
                    Image(systemName: "square.and.arrow.up") //sf symbols are pre-installed in xcode
                        .resizable() //This will convert frame to screen size.thats y frame ini recommended
                        .foregroundStyle(.red)
                    //           .font(.largeTitle)
                    //          .imageScale(.large)
                    //or
                        .frame(width: 100, height: 120) //frame of the image not border of image
                    Image("Demo")   //pixel size is large so it goes out of screen
                        .resizable()
                    //  .scaledToFit() //this will keep real aspect ratio & fit to frame
                        .scaledToFill()//this will fill the frame with real aspect ratio
                        .frame(width: 200 , height: 200)
                    //     .clipped() //this will crop the excess image out of the frame if you use scale to fill (use after declaring frame)
                    //or
                        .clipShape(.circle) //or
                    //   .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay {
                            Circle().stroke(.green, lineWidth: 4)
                        }
                        .shadow(radius: 7)
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                        .font(.system(size: 15))
                    
                    NavigationLink{
                        safeArea()
                        
                    } label: {
                        Text("Cutomize Safe Area (Click)")
                            .background(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    .padding()
                    
                    
                 
                    
                }
              
            }
        }
        
    }
}

#Preview {
    imageAndSafearea()
}
