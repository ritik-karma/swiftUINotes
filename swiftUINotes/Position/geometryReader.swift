/// Similar to ZStack but more like a container where we can place item at a specific location
import SwiftUI

struct geometryReader: View {
    var body: some View {
        GeometryReader { geometry in
            //geometry(geometryproxy) which takes all available width & height
            
            VStack{
                VStack{
                    Rectangle()
                        .foregroundStyle(.blue)
                }
                .frame(height: geometry.size.height / 2)
                
                VStack{
                    Rectangle()
                        .foregroundStyle(.green)
                }
                .frame(height: geometry.size.height * 0.2)
                ///will taking 20% of the height
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.purple)
                    .position(x: geometry.size.width * 0.82, y: geometry.size.height * -0.1)

            }
                    }
        .ignoresSafeArea(.all)
        
        
    }
}

#Preview {
    geometryReader()
}
