import SwiftUI
import PhotosUI


struct photoPicker: View {
    
//    @State var pickerItem = [PhotosPickerItem]()
                    //OR
    @State var pickerItem: [PhotosPickerItem] = []
    
    var body: some View {
        VStack{
            
            //'maching' can used to allow any specific type of photos like screenshots or cameraPhotos. In the below code images are allowed but not screenshots.
            PhotosPicker(selection: $pickerItem, maxSelectionCount: 3, matching: .any(of: [.images, .not(.screenshots)])) {
                Label("Select Image", systemImage: "photo")
            }
            
        }
        

    }
}

#Preview {
    photoPicker()
}
