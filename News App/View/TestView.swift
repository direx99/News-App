//
//  TestView.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-09.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        HStack{
            VStack{
               
                VStack{
                    
                }
                .frame(width: 100,height: 100)
                .background()
                .padding(.top,1)
                Spacer()
            }

        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color(hex: "121212"))
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
