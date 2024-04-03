//
//  QRCode.swift
//  Cafe
//
//  Created by Hanna Kovbasiuk on 03.04.2024.
//

import SwiftUI

struct QRCode: View {
    var body: some View {
        VStack{
            Image("myqr")
                .resizable()
                .frame(width: 350,height: 350)
        }
    }
}

#Preview {
    QRCode()
}
