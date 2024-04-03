//
//  NewsRead.swift
//  Cafe
//
//  Created by Hanna Kovbasiuk on 03.04.2024.
//

import SwiftUI

struct NewsRead: View {
    
    var newsModel: NewsModel
    var body: some View {
        VStack{
            Image(newsModel.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width:360,height: 230)
                .cornerRadius(30).padding()
            ZStack{
                Rectangle()
                    .foregroundColor(.brown)
                    .opacity(0.35)
                    .frame(width: 390,height: 100)

                Text("\(newsModel.name)")
                    .font(.title)
            }
            Divider()
            Text("\(newsModel.text)").padding()
            
        }


                   Spacer()
                
    }
}

#Preview {
    NewsRead(newsModel: newsModels[0])
}
