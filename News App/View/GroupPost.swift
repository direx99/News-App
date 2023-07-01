//
//  GroupPost.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-01.
//

import SwiftUI

struct GroupPost: View {
    @State var joinGroup: Bool = false
    @State var moreBtn: Bool = false

    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Group{
                        Image(systemName: "chevron.left")
                        Spacer()
                        Text("r/technologies")
                        Spacer()
                        Button {
                            moreBtn = !moreBtn
                        } label: {
                            Image(systemName: "ellipsis")
                           

                        }

                    }
                    .font(.system(size: 18)).fontWeight(.medium)
                    .foregroundColor(.white)
                    .opacity(0.9)
                    
                }
                HStack{
                    Spacer()
                }
                .frame(height: 0.2)
                .background(Color.white)
                .opacity(0.2)
                .padding(.horizontal,-20)
                .padding(.vertical,15)
                GroupAbout(joinGroup: $joinGroup)
                PostFeed()

                
                
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
        }
        .padding(.top,10)
        .background(Color("BgColor"))
        .blur(radius: moreBtn ? 7 : 0.0)

    }
}

struct GroupPost_Previews: PreviewProvider {
    @State static var joinGroup = false
    
    static var previews: some View {
        GroupPost()
    }
}
struct GroupAbout: View{
    
    @Binding  var joinGroup : Bool


    var body: some View{
        VStack{
            HStack(spacing:15){
                Button {
                   
                } label: {
                    VStack{
                        
                        Image(systemName: "dot.viewfinder")
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                            .opacity(0.5)
                    }
                    .frame(width: 50,height: 50)
                    .background(Color(hex: "#484854"))
                    .cornerRadius(100)
                }

                
                VStack{
                    Image(systemName: "ipad.and.iphone")
                        .font(.system(size: 40)).fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .frame(width: 100,height: 100)
                .background(Color(hex: "#F97C4B"))
                .cornerRadius(100)
                Button {
                    joinGroup = !joinGroup
                } label: {
                    if (joinGroup==true){
                        VStack{
                            
                            Image(systemName: "checkmark")
                                .font(.system(size: 25)).fontWeight(.semibold)
                                .foregroundColor(Color("LiteBlue"))
                        }
                        .frame(width: 50,height: 50)
                        .background(Color(hex: "#324E68"))
                        .cornerRadius(100)
                    }
                    else{
                        VStack{
                            
                            Image(systemName: "plus")
                                .font(.system(size: 25))
                                .foregroundColor(Color.white)
                                .opacity(0.5)
                        }
                        .frame(width: 50,height: 50)
                        .background(Color(hex: "#484854")).fontWeight(.semibold)
                        .cornerRadius(100)
                    }
                }
            }
            .padding(.vertical,5)
            Text("Technologies")
                .font(.system(size: 20)).fontWeight(.medium)
                .foregroundColor(.white)
                .opacity(0.9)
                .padding(.bottom,5)
            HStack{
                Text("38K")
                    .font(.system(size: 13)).fontWeight(.medium)
                    .foregroundColor(.white)
                    .opacity(0.9)
                Text("members  / ")
                    .font(.system(size: 13)).fontWeight(.medium)
                    .foregroundColor(.white)
                    .opacity(0.5)
                Text("120")
                    .font(.system(size: 13)).fontWeight(.medium)
                    .foregroundColor(.white)
                    .opacity(0.9)
                Text("online")
                    .font(.system(size: 13)).fontWeight(.medium)
                    .foregroundColor(.white)
                    .opacity(0.5)
            }
            HStack(){
               
                Text("A community made for sharing and discussing \n       technology based content...")
                
                    
                    .font(.system(size: 14))
                    .foregroundColor(Color("TextGray"))
                   
                +
                Text("Read More")
                    .foregroundColor(Color("LiteBlue"))
                    .font(.system(size: 14))
               
            }
            .frame(alignment: .center)
            .padding(.vertical,15)
            
            HStack{
                Spacer()
            }
            .frame(height: 6)
            .background(Color("Black1"))
            .padding(.top)
            .padding(.horizontal,-20)
            
        }
        
        
    }
}



extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b, a: Double
        switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b, a) = (
                Double((int >> 8) & 0xF) / 15,
                Double((int >> 4) & 0xF) / 15,
                Double((int >> 0) & 0xF) / 15,
                1
            )
        case 6: // RGB (24-bit)
            (r, g, b, a) = (
                Double((int >> 16) & 0xFF) / 255,
                Double((int >> 8) & 0xFF) / 255,
                Double((int >> 0) & 0xFF) / 255,
                1
            )
        case 8: // ARGB (32-bit)
            (r, g, b, a) = (
                Double((int >> 16) & 0xFF) / 255,
                Double((int >> 8) & 0xFF) / 255,
                Double((int >> 0) & 0xFF) / 255,
                Double((int >> 24) & 0xFF) / 255
            )
        default:
            (r, g, b, a) = (1, 1, 1, 1)
        }
        self.init(
            .sRGB,
            red: r,
            green: g,
            blue: b,
            opacity: a
        )
    }
}
