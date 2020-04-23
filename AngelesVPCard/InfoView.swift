//
//  InfoView.swift
//  AngelesVPCard
//
//  Created by Ángeles Vázquez Parra on 23/04/2020.
//  Copyright © 2020 Ángeles Vázquez Parra. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(UIColor(red: 0.13, green: 0.65, blue: 0.70, alpha: 1.00)))
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+34 622 41 92 14", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
