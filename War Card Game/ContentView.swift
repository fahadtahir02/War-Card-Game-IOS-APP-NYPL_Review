//
//  ContentView.swift
//  War Card Game
//
//  Created by Fahad Tahir on 1/14/24.
//

import SwiftUI


struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Spacer()
            Image("background-plain").resizable().ignoresSafeArea()
            
            Spacer()
            VStack {
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }.padding(.all)
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack {
                    Spacer()
                    Text("Player")
                    Spacer()
                    Text("CPU")
                    Spacer()
                    
                }.padding().font(.title).foregroundColor(.white)
                
                HStack{
                    
                    Spacer()
                    Text(String(playerScore))
                    Spacer()
                    Text(String(cpuScore))
                    Spacer()
                    
                }.padding().font(.title).foregroundColor(.white)
                Spacer()
            }
            .padding()
        }
        
        
    }
    
    func deal() {
        var playerNum = Int.random(in: 2...14)
        playerCard = "card" + String(playerNum)
        
        var cpuNum = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuNum)
        
        if playerNum > cpuNum {
            playerScore = playerScore + 1
            print("player greater")
        }else if cpuNum > playerNum{
            cpuScore = cpuScore + 1
            print("cpu greater")
        }else{
            playerScore = playerScore
            cpuScore = cpuScore
        }
                
        
    }
}

#Preview {
    ContentView()
}
