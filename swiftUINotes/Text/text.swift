
//MARK: Custom font & COLOR:
/*
 first add downloaded font
 .font(Font.custom("KumbhSans", size: 23))
 Color("roundedTextBorder")
 */

//MARK: -
import SwiftUI

struct text: View {
    @State var isOn = true
    @State var bio = ""
    var body: some View {
        VStack {
            Text("Hello swiftUiBasics! ")
                .font(.largeTitle)  //View modifier
                .fontWeight(.semibold)
                .foregroundStyle(LinearGradient(colors: [.purple,.pink], startPoint: .topLeading, endPoint: .bottomTrailing))
                .italic()
                .underline()
            
            
            
            Text("This is the subheadline which can be using the following also i seted line limit to 2")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .truncationMode(.middle)
            Text("Heavy")
                .fontWeight(.heavy)
            Text("Bold 700")
                .bold()
            Text("Bold & secondry")
                .fontWeight(.bold)
                .foregroundStyle(.secondary)
            Text("tertiary")
                .foregroundStyle(.tertiary)
            Text("HeadLine")
                .font(.headline)
            
            Text("LargeTitle")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple.gradient)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Text("Title")
                .font(.title)
        
            Text("Title2")
                .font(.title2)
            Text("Title3")
                .font(.title3)
            Text("Title")
                .font(.body)
            Text("Title")
                .font(.callout)
           
            Text("Title")
                .font(.footnote)
            Text("Hello!")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .clipShape(Capsule())
                .opacity(0.4) ///Transperancy
                .kerning(10)///spacing between char of text
            Text("Custom 23")
                .font(
                    .system(
                        size: 23,
                        weight: .ultraLight,
                        /*
                         ultralight
                         thin
                         light
                         regular
                         medium
                         semibold
                         bold
                         heavy
                         black
                         */
                        design: .monospaced))
                .frame(width: 300, height: 50)
                .padding()///padding ke upper bhi background lga hai
                .background(.teal)
                .border(.green, width: 6)
          //  Divider()
        }
        .padding()
        Text("\(isOn ? "its true" : "its false") :ternarry in text ")
        Spacer()
        Label{
            Text("Apple")
        } icon: {
            Image("apple")
        }
       // .labelStyle(.titleOnly)
        .labelStyle(.iconOnly)
        Text("Please enter the date \(Image(systemName: "calendar"))jkj")
            .font(.title)
        Label("this is label", systemImage: "pencil")
            .font(.title)
    }
}

#Preview {
    text()
}
