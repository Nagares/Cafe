//
//  NewsItem.swift
//  Cafe
//
//  Created by Hanna Kovbasiuk on 02.04.2024.
//

import SwiftUI

struct NewsItem: View {
    
    var newsModel: NewsModel
    
    
    var body: some View {
        HStack{
            
            Image(newsModel.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width:150,height: 100)
                
            ZStack{
                Rectangle()
                    .foregroundColor(.brown)
                    .opacity(0.65)
                    .frame(width: 170,height: 100)
                VStack{
                    
                    Text(newsModel.name).bold()
                        .frame(width: 170,height: 40)
                    Button(){
                        
                        
                    }label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                            Text("Read")
                                .foregroundColor(.white)
                                .bold()
                        }.frame(width: 80,height: 30)
                            .foregroundColor(.brown)
                    }
                }
            }.frame(width: 170,height: 100)
    }.cornerRadius(15)
 }
}

#Preview {
    NewsItem(newsModel:newsModels[0])
}
