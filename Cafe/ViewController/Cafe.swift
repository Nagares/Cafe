//
//  Cafe.swift
//  Cafe
//
//  Created by Hanna Kovbasiuk on 02.04.2024.
//

import SwiftUI

struct Cafe: View {
    
    var user:UserModel
    @State var changeScreenQR=false
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("Hi "+user.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                    Spacer()
                    Image(user.photo).resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width:100,height: 100)
                        .clipShape(Circle())
                        .padding()
                }
                ZStack{
                    Button(){
                        changeScreenQR=true
                        
                    }label: {
                        
                        Card(user: usersModels[0])
                    }
                }
                List(newsModels, id: \.id) { newsModel in
                    
                    NavigationLink {
                        
                        NewsRead(newsModel: newsModel)
                        
                    }label: {
                        
                        NewsItem(newsModel: newsModel)
                    }
                }
            }.navigationDestination(isPresented: $changeScreenQR) {
                QRCode()
            }
        }
    }
    
}

#Preview {
    Cafe(user: usersModels[0])
}
