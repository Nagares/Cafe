//
//  Cadr.swift
//  Cafe
//
//  Created by Hanna Kovbasiuk on 03.04.2024.
//

import SwiftUI

struct Card: View {
    
    var user:UserModel
    
    var body: some View {
       
        
        
        
        
        ZStack{
            
            Image("10")
                .resizable()
                .frame(width: 350,height: 200).opacity(0.6)
                .cornerRadius(30)
            
            RoundedRectangle(cornerRadius: 30).opacity(0.3)
            VStack{
                HStack{
                    Text("\(user.bonuses)")
                        .font(.system(size: 42,weight: .bold,design: .rounded))                .foregroundColor(.brown)
                        .background(.white).cornerRadius(15)
                    Spacer()
                    Image("qr").resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 50,height: 50)
                }
                HStack{
                    Text("Bonuses you have")
                        .foregroundColor(.black)
                        .bold()
                    Spacer()
                }
                Spacer()
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width:60 ,height: 30)
                            .foregroundColor(.brown)
                        Text("\(user.percent) %")
                            .font(.system(size: 20,weight: .bold,design: .rounded))                .foregroundColor(.white)
                            .background(.brown).cornerRadius(15)
                    }
                    VStack(alignment: .leading){
                        Text("Cashback level")
                            .foregroundColor(.black)
                        
                        Text("Steep")
                            .foregroundColor(.black)
                            .bold()
                        
                        
                    }
                    Spacer()
                }
            }.padding()
            
        }.frame(width: 350,height: 200)
            .foregroundColor(.green)
    }
        
        

}

#Preview {
    Card(user:usersModels[0])
}
