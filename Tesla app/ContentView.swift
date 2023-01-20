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
            ScrollView{
                AppHeder()
                .padding()
            }
            voiceCommandButton()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .foregroundColor(Color.white)
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
struct AppHeder: View {
    var body: some View {
        HStack{
            
            VStack(alignment: .leading, spacing: 10){
                Text("Model 3".uppercased())
                    .font(.caption2)
                    .fontWeight(.medium)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .clipShape(Capsule())
                Text("Mach Five")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
               // commandDivder()
            }
            Spacer()
            HStack{
                genralButton(icon : "lock.fill")
                genralButton(icon : "gear")
                
            }
          
        }
        .padding(.top)
        commandDivder()
    }
}
struct genralButton: View{
    var icon: String
    var body: some View{
        Image(systemName: icon)
            .frame(width: 44, height: 44)
            .background(Color.white.opacity(0.2))
            .clipShape(Circle())
        
    }
}
struct commandDivder: View{
   
    var body: some View{
        Rectangle()
            .frame(maxWidth: .infinity, maxHeight: 0.5)
            .background(Color.white.opacity(0.1))
            
        
    }
}
