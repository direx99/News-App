//
//  HomeView.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-01.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                
                
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("Sunday, July 2nd")
                                .foregroundColor(.white)
                                .font(.system(size: 13)).fontWeight(.medium)
                                .opacity(0.5)
                            
                            Text("Daily feed")
                                .foregroundColor(.white)
                                .font(.system(size: 30)).fontWeight(.medium)
                            
                        }
                        Spacer()
                        
                        Image("User")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45)
                            .cornerRadius(50)
                    }
                    HStack{
                        
                        NewsTypeSelected()
                        Spacer()
                        NewsType()
                        Spacer()
                        NewsType()
                        
                    }
                    .padding(.top,10)
                    
                    HStack{
                        Spacer()
                    }
                    .frame(height: 6)
                    .background(Color("Black1"))
                    .padding(.top)
                    .padding(.horizontal,-40)
                    
                    PostFeed()
                    
                    
                    
                    Spacer()
                }
                .padding()
                
            }
            .padding(.top)
            .background(Color("BgColor"))
            
            
            
        }
    }
    
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct NewsTypeSelected : View{
    var body: some View{
        Text("Popular")
        
            .foregroundColor(.white)
            .padding(6)
            .padding(.horizontal,25)
            .background(Color("Gray"))
            .cornerRadius(30)
            .font(.system(size: 14))
            .fontWeight(.semibold)
    }
}

struct NewsType : View{
    var body: some View{
        Text("Recent")
        
            .foregroundColor(Color("Gray"))
            .padding(6)
            .padding(.horizontal,10)
            .cornerRadius(30)
            .font(.system(size: 14))
            .fontWeight(.semibold)
    }
}

struct PostFeed : View{
    var body: some View{
       VStack{
            HStack{
                Image("trend")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                Text("Popular posts")
                    .foregroundColor(.white)
                    .font(.system(size: 15)).fontWeight(.medium)
                    .opacity(0.5)
                Image(systemName: "chevron.down")
                    .foregroundColor(.white)
                    .opacity(0.5)
                    .font(.system(size: 13))
                    .fontWeight(.semibold)

                Spacer()
            }
            .padding(.top)

                VStack{
                    
                    Post()
                    Post()
                    Post()
                    Post()
                    Post()
                    Post()
                }
            }
       
            

        
    }
}
struct Post : View{
    var body: some View{
        NavigationStack{
            VStack{
                HStack(alignment:.top,spacing: 15){
                    VStack{
                        Image("news")
                            .resizable()
                            .scaledToFit()
                        
                        
                    }
                    .frame(width: 80,height: 80)
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    VStack(alignment:.leading,spacing: 11){
                        HStack{
                            
                            NavigationLink(destination: GroupPost()) {
                                Text("r/worldnews  • u/dinith  • 12h")
                                    .foregroundColor(.white)
                                    .font(.system(size: 13))
                                    .opacity(0.5)
                                
                            }
                            
                            Spacer()
                            Image(systemName: "ellipsis")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                                .opacity(0.5)
                                .padding(.trailing,-20)
                            
                        }
                        Text("Australia to deport Kiwi criminal who has lived there since he was 9.")
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                        
                        
                    }
                    
                    Spacer()
                }
                .padding(.bottom,10)
                
                HStack(spacing: 5){
                    Image(systemName: "message")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .opacity(0.5)
                    Text("160")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .opacity(0.5)
                    Image(systemName: "bookmark")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .opacity(0.5)
                        .padding(.leading)
                    
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .opacity(0.5)
                    Spacer()
                    Image(systemName: "arrowtriangle.up.circle.fill")
                        .foregroundColor(Color("LiteBlue"))
                        .font(.system(size: 14))
                    Text("209")
                        .font(.system(size: 14))
                        .foregroundColor(Color("LiteBlue"))
                    Image(systemName: "arrowtriangle.down.circle.fill")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                        .opacity(0.5)
                    
                    
                    
                    
                    
                }
                .padding(.bottom,15)
                HStack{
                    DottedLine()
                    DottedLine()
                    DottedLine()
                    DottedLine()
                    DottedLine()
                    DottedLine()
                    DottedLine()
                    DottedLine()
                    DottedLine()
                }
            }
            .padding(.top,15)
            .frame(width: 360)
        }
        
    }
}

struct DottedLine: View{
    var body: some View{
        HStack{
            Group{
                VStack{
                    
                }
                VStack{
                    
                }
                VStack{
                    
                }
                    
                VStack{
                    
                }
                VStack{
                    
                }
                VStack{
                    
                }
                
            }
            .frame(width: 2,height: 2)
            .background(Color.white)
            .cornerRadius(0.2)
            .padding(.trailing,-3)
            


        }
        .opacity(0.1)
    }
}


