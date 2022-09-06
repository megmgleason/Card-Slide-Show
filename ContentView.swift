//
//  ContentView.swift
//  CardSlideshow
//
//  Created by MEG G on 9/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var title = "Ace of Diamonds"
    @State var img = "AD"
    var names = ["Ace of Clubs", "Ace of Hearts", "Ace of Diamonds", "Ace of Spades"]
    var images = ["AC", "AH", "AD", "AS"]
    @State var counter = 0
    
    var body: some View {
        VStack{
            VStack{
                Text(title)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.red)
                Image(img)
                    .padding(53)
            }
            .padding(.bottom,22)
            .padding()
            .background(Rectangle())
            
            Button(action: {
                if(self.counter == self.images.count){
                    self.counter = 0
                } // if
                
                self.img = self.images[counter]
                self.title = self.names[counter]
                self.counter += 1
            }){
                Text("Click the button!")
            }
            .buttonStyle(DawgStyle())
        }
        
    }
    //        Text("Hello, world!")
    //            .padding()
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DawgStyle: ButtonStyle {

func makeBody(configuration: Self.Configuration) -> some View {
configuration.label
.frame(minWidth: 0, maxWidth: .infinity)
.padding()
.foregroundColor(.white)
.font(.title)
.background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.black]), startPoint: .leading, endPoint: .trailing))
.cornerRadius(40)
.padding(.horizontal, 20)
.scaleEffect(configuration.isPressed ? 0.9 : 1.0)
}
}
