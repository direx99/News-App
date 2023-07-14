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
    @Binding var btnClick: Bool
    @Binding var groupClick: Bool
   
    @Binding var tapme : Bool
    
        var redditPost : RedditPost
    
    @StateObject var viewModel: HomeModelView

  

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
                                    
                                    NavigationLink(destination: GroupPost( viewModel: viewModel, btnClick: $btnClick, groupClick:$groupClick )) {
                                        Text("r/\(redditPost.community)")
                                            .foregroundColor(.white)
                                            .font(.system(size: 13))
                                            .opacity(0.5)
                                        
                                    }
                                    Button{
                                        btnClick = !btnClick


                                    }label:{
                                        Text("u/\(redditPost.user)")
                                            .foregroundColor(.white)
                                            .font(.system(size: 13))
                                            .opacity(0.5)
                                    }
                                    
                                    Text("• \(redditPost.time ?? 0)hrs")
                                        .foregroundColor(.white)
                                        .font(.system(size: 13))
                                        .opacity(0.5)
                                    
                                        
                                    
                                    
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
                    
                    if #available(iOS 16.4, *) {
                        UserView()
                        .presentationCornerRadius(40)
                        .presentationDetents([.height(400)]
                        )
                               }
                    
                    else{
                        UserView()
                        .presentationDetents([.height(400)]
                        )
                    }
                   
                    
                        
                    
                        
                        
                                       
                        
                       
                        
                    
                    
                        
                }
            }
            
        }
    }


