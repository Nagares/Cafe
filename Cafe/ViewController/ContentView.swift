//
//  ContentView.swift
//  Cafe
//
//  Created by Hanna Kovbasiuk on 30.03.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var changeScreen=false
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 50){
                Image("logo").resizable()
                    .frame(width: 300,height: 300)
                    .clipShape(Circle())
                Text("Starbucks")
                    .font(.system(size: 42,weight: .bold,design: .rounded))
                    .multilineTextAlignment(.center)
                Button(){
                    changeScreen=true
                    
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                        Text("Get Started")
                            .foregroundColor(.white)
                            .bold()
                    }.frame(width: 300,height: 70)
                        .foregroundColor(.brown)
                }
            }.navigationDestination(isPresented: $changeScreen) {
                Cafe(user:usersModels[0])
            }
        }
    }
}

    #Preview {
        ContentView()
        
    }
