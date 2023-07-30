//
//  ContentView.swift
//  Week02Lab01
//
//  Created by Muneera Y on 12/01/1445 AH.
//

import SwiftUI
struct ChangeImage : Identifiable{
    var id = UUID()
    var image: String
}

let backgroundGradient = LinearGradient(
    colors: [ Color.blue, Color.black],
    startPoint: .top, endPoint: .bottom)
struct ContentView: View {
    @State var showingAlert:Bool = false
//    @State var changeImage: ChangeImage
    var body: some View {
        
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            //MARK:
            
            //Create a new SwiftUI View and display a simple text message using the Text view.
            //        Customize the text font, color, and alignment to enhance the appearance.
            VStack {
                Text("Hello, this is our lab 2 for week 2 ").font(.largeTitle).foregroundColor(Color.white).multilineTextAlignment(.center)
                ZStack{
                 
                    Image("develper") .resizable()
                        .scaledToFit().clipShape(Circle()).overlay {
                            Circle().stroke(.black, lineWidth: 4)
                        } .shadow(radius: 8)
                    Text("Devloper").foregroundColor(Color.red).multilineTextAlignment(.center).padding(.top, 279).bold().font(.system(size: 30))
                }
                Text("Hello,I am Muneera I will show you everything about swift   ").font(.title).foregroundColor(Color.white).multilineTextAlignment(.leading).frame(alignment: .top)
                Spacer()
                HStack{
                    Text("For more information ").foregroundColor(Color.white)
                    Image(systemName: "chevron.right").foregroundColor(Color.white)
                    Spacer()
                    Button(action: {
                        showingAlert = true
                        print("i am click button")
                    }
                           
                           , label:{
                            Text("See information")
                     
                        }).alert(isPresented: $showingAlert) {
                            Alert(title: Text("This is a button"), message: Text("The click button works successfully"), dismissButton: .default(Text("OK")))
                                
                        }
                }
            }
            .padding()
        }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
