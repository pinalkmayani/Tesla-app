//
//  ContentView.swift
//  Tesla app
//
//  Created by Pinal on 19/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            voiceCommandButton()
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct voiceCommandButton: View {
    var body: some View {
        ZStack{
            VStack(){
                Spacer()
                HStack{
                    Spacer()
                    Image(systemName: "mic.fill")
                        .font(.system(size: 24, weight: .semibold, design: .default))
                        .frame(width: 64, height: 64)
                        .background(Color.green)
                        .clipShape(Circle())
                        .padding()
                        .shadow(radius: 10)
                }
                
            }.edgesIgnoringSafeArea(.all)
        }
        
    }
}
