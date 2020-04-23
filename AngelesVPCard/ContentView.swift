//
//  ContentView.swift
//  AngelesVPCard
//
//  Created by Ángeles Vázquez Parra on 23/04/2020.
//  Copyright © 2020 Ángeles Vázquez Parra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.13, green: 0.65, blue: 0.70, alpha: 1.00))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("angelesvp_picture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 200, height: 200)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Ángeles VP")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("Mobile Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                
                Divider()

                InfoView(text: "+34 666 66 66 66", imageName: "phone.fill")
                
                InfoView(text: "AVazPar", imageName: "envelope.fill")
        
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
