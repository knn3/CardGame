//
//  ContentView.swift
//  cardGame
//
//  Created by Nguyên Nguyễn on 2024-06-13.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
            }
        }
    }
    
    func deal() {
        var playerCardScore = Int.random(in: 2...14)
        var cpuCardScore = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardScore)
        cpuCard = "card" + String(cpuCardScore)
        
        if playerCardScore > cpuCardScore {
            playerScore += 1
        }
        else if playerCardScore < cpuCardScore {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
