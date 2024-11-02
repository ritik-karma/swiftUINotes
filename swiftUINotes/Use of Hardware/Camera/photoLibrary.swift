//
//  photoLibrary.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 28/10/24.
//

import SwiftUI
import PhotosUI

struct photoLibrary: View {
    
    //    @State var pickerItem = [PhotosPickerItem]()
                        //OR
    @State private var pickerItem : [PhotosPickerItem] = []
    @State private var selectedItems : [Image] = []
    
    
    var body: some View {
        VStack{
            
            //'maching' can used to allow any specific type of photos like screenshots or cameraPhotos. In the below code images are allowed but not screenshots.
            PhotosPicker(
                selection: $pickerItem,
                maxSelectionCount: 3,
                matching: .any(of: [.images,        .not(.screenshots)])
            ) {
                Label("Select Image", systemImage: "photo")
            }

        } //Select Image code
        
        ScrollView{
            ForEach(0..<selectedItems.count, id: \.self) { item in
                selectedItems[item]
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 250)
            }
            .onChange(of: pickerItem){
                Task {
                    //Step1
                    selectedItems.removeAll()
///If any change happens in pickerItem then remove all images from selectedItems then...
                    //Step2
                    for item in pickerItem{
                        if let loadedImage = try await
                            item
///.load transferable is  commonly used when loading items that comply with Transferable, such as images, files, or data that can be passed between views or applications.
                            .loadTransferable(type: Image.self){
                            selectedItems.append(loadedImage)
                        }
                    }
                    

                }
            }
            
        }


    }
}



#Preview {
    photoLibrary()
}
