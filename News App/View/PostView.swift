//
//  PostView.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-09.
//

import SwiftUI
import Kingfisher

struct PostView: View {
    @Binding var userView: Bool

    
        let redditPost : RedditPost
        @StateObject var viewModel:HomeModelView
    @State var btnClick:Bool = false

        var body: some View{
            NavigationStack{
                NavigationLink(destination: DetailPost(redditPost: self.redditPost)) {
                   
                    VStack{
                        HStack(alignment:.top,spacing: 15){
                            VStack{
                                //image
                                KFImage(URL(string: redditPost.image))
                                
                                    .resizable()
                                    .scaledToFill()
                                
                                
                            }
                            .frame(width: 80,height: 80)
                            .background(Color.white)
                            .cornerRadius(15)
                            
                            VStack(alignment:.leading,spacing: 11){
                                HStack{
                                    
                                    NavigationLink(destination: GroupPost( viewModel: viewModel)) {
                                        Text("r/\(redditPost.community)")
                                            .foregroundColor(.white)
                                            .font(.system(size: 13))
                                            .opacity(0.5)
                                        
                                    }
                                    Button{
                                        btnClick = !btnClick

                                    }label:{
                                        Text("r/\(redditPost.user)")
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
                                Text(redditPost.title)
                                    .foregroundColor(.white)
                                    .font(.system(size: 17))
                                    .lineLimit(3)
                                    .multilineTextAlignment(.leading)
                                
                            }
                            
                            Spacer()
                        }
                        .padding(.bottom,10)
                        
                        HStack(spacing: 5){
                            Image(systemName: "message")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .opacity(0.5)
                            Text(String(redditPost.comments ?? 0))
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
                            Text(String(redditPost.likes ?? 0))
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
                
               
                .sheet(isPresented: $btnClick)
                {
                    UserView()
                    
                        
                    
                        
                        
                                       
                        
                        .presentationDetents([.height(400)])
                        
                    

                    
                        
                }
            }
            
        }
    }

struct PostView_Previews: PreviewProvider {


    static var previews: some View {
        PostView(userView: .constant(false), redditPost: RedditPost(id: "", title: "", community: "", time: "", image: "", comments: 0, likes: 0, user: "", v: 0), viewModel: HomeModelView())

    }
}
