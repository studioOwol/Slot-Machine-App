//
//  ContentView.swift
//  Slot Machine
//
//  Created by Nahyun on 2023/05/11.
//

import SwiftUI

//MARK: - Properties


//MARK: - Body
struct ContentView: View {
    var body: some View {
        ZStack {
            //MARK: - Background
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            //MARK: - Interface
            VStack(alignment: .center, spacing: 5) {
                //MARK: - Header
                LogoView()
                
                Spacer()
                
                //MARK: - Score
                
                HStack {
                    HStack {
                        Text("Your\nCoins".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.trailing)
                        
                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                    }
                    .modifier(ScoreContainerModifier())
                    
                    Spacer()
                    
                    HStack {
                        Text("200")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                        
                        Text("High\nScore".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.leading)
                    }
                    .modifier(ScoreContainerModifier())
                }
                
                //MARK: - Slot Machine
                //MARK: - Footer
                
                Spacer()
                
                
            }
            //MARK: - Buttons
            .overlay(
                // Reset
                Button(action: {
                    print("Reset the game")
                }) {
                    Image(systemName: "arrow.2.circlepath.circle")
                }
                    .modifier(ButtonModifier()),
                    alignment: .topLeading
            )
            .overlay(
                // Info
                Button(action: {
                    print("Info View")
                }) {
                    Image(systemName: "info.circle")
                }
                    .modifier(ButtonModifier()),
                    alignment: .topTrailing
            )
            .padding()
            .frame(maxWidth: 720)
            
            //MARK: - Popup
        } // ZStack
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
