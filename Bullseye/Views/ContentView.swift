//
//  ContentView.swift
//  Bullseye
//
//  Created by Kevin Hermawan on 26/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Put the Bullseye As Close As You Can To".uppercased())
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                    .padding(.leading, 30.0)
                    .padding(.trailing, 30.0)
                    .foregroundColor(Color("TextColor"))
                
                Text(String(game.target))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color("TextColor"))
                
                HStack {
                    Text("1")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                    
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    
                    Text("100")
                        .bold()
                        .foregroundColor(Color("TextColor"))
                }
                .padding()
                
                Button(action: {
                    self.alertIsVisible = true
                }) {
                    Text("Hit Me".uppercased())
                        .bold()
                        .font(.title3)
                }
                .padding(20.0)
                .background(
                    ZStack {
                        Color("ButtonColor")
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    }
                )
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
                .alert(isPresented: $alertIsVisible) {
                    let roundedValue = Int(self.sliderValue.rounded())
                    
                    return Alert(title: Text("Hello There!"), message: Text("The slider's value is \(roundedValue).\n You scored \(self.game.points(sliderValue: roundedValue))"), dismissButton: .default(Text("Awesome!")))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.light)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}
