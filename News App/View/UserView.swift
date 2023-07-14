//
//  UserView.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-07.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        VStack{
            VStack{
                
            }
            .frame(width: 50, height: 5)
            .background(Color.white)
            .cornerRadius(10)
            .opacity(0.5)
            .padding(.bottom,20)
            .padding(10)


            HStack(spacing: 20){
                Image("u6")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .cornerRadius(100)
                Spacer()
                
                Image(systemName: "plus")
                    .font(.system(size: 20)).fontWeight(.medium)
                    .foregroundColor(Color(hex: "309FE1"))
                    .padding()
                    .background(Color(hex: "2C4460"))
                    .cornerRadius(100)
                Image(systemName: "xmark")
                    .font(.system(size: 20)).fontWeight(.medium)
                    .foregroundColor(Color(hex: "E98D11"))
                    .padding()
                    .background(Color(hex: "4B2C24"))
                    .cornerRadius(100)
                
                
            }.padding(.bottom,10)
            HStack{
                VStack(alignment: .leading,spacing: 7){
                    Text("u/amahisilva")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .font(.system(size: 25))
                    HStack{
                      
                        Text("368")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .opacity(0.9)
                        Text("Karma  / ")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .opacity(0.5)
                        Text("6y")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .opacity(0.9)
                        Text("joined")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                            .opacity(0.5)
                    }
                    Spacer()
                    VStack(alignment: .leading,spacing: 20){
                        HStack(spacing: 25){
                            Image(systemName: "envelope")
                                .font(.system(size: 18))
                                .foregroundColor(Color(hex: "309FE1"))
                            Text("Send message")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                                .font(.system(size: 18))
                                .opacity(0.9)
                            Spacer()
                            Image(systemName:"chevron.right")
                                .font(.system(size: 18))
                                .foregroundColor(Color(hex: "f1f1f1"))
                                .opacity(0.5)
                        }
                        HStack(spacing: 25){
                            Image(systemName: "text.append")
                                .font(.system(size: 18))
                                .foregroundColor(Color(hex: "309FE1"))
                            Text("See Posts")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                                .font(.system(size: 18))
                                .opacity(0.9)
                            Spacer()
                            Image(systemName:"chevron.right")
                                .font(.system(size: 18))
                                .foregroundColor(Color(hex: "f1f1f1"))
                                .opacity(0.5)
                        }
                    }
                    
                }
                Spacer()
            }
            .padding(.top,10)
            Spacer()
        }

        .padding(.horizontal,30)
        .padding(.bottom,20)

        .frame(maxWidth: .infinity,maxHeight: .infinity)

        .background(Color("BgColor"))


    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
