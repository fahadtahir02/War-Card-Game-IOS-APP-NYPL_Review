//
//  ContentView.swift
//  War Card Game
//
//  Created by Fahad Tahir on 1/14/24.
//

import SwiftUI


struct ContentView: View {
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
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                    
                }.padding(.all)
                Spacer()
                
                Image("button")
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
                    Text("0")
                    Spacer()
                    Text("0")
                    Spacer()
                    
                }.padding().font(.title).foregroundColor(.white)
                Spacer()
            }
            .padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
