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
    @State var DetailView: Bool = false
    @StateObject var viewModel:HomeModelView


    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{

                HStack{
                    Group{
                        Image(systemName: "chevron.left")
                        Spacer()
                        Text("r/technologies")
                        Spacer()
                        if #available(iOS 16.4, *) {
                            Button {
                                moreBtn = !moreBtn
                            } label: {
                                Image(systemName: "ellipsis")
                                
                                   

                               

                            }
                                } else {
                                    Button {
                                        moreBtn = !moreBtn
                                    } label: {
                                        Image(systemName: "ellipsis")
                                        
                                            .sheet(isPresented: $moreBtn) {
                                                UserView()
                                                    
                                                
                                                    
                                                    
                                                                   
                                                    
                                                    .presentationDetents([.height(400)])

                                                
                                                    
                                            }
                                            

                                       

                                    }
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
                GroupAbout(joinGroup: $joinGroup,DetailView:$DetailView)
                HStack{
                    Spacer()
                }
                .frame(height: 6)
                .background(Color("Black1"))
                .padding(.top)
                .padding(.horizontal,-20)
                PostFeedView(viewModel: viewModel)

                
                
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
        }
        .padding(.top,10)
        .background(Color(moreBtn ? "dark" : "BgColor"))
        .blur(radius: moreBtn ? 7 : 0.0)
        .navigationBarHidden(true)

    }
}


struct GroupPost_Previews: PreviewProvider {
    @State static var joinGroup = false
    @State static var DetailView = false

    
    static var previews: some View {
        GroupPost(viewModel: HomeModelView())

    }
}
struct GroupAbout: View{
    
    @Binding  var joinGroup : Bool
    @Binding  var DetailView : Bool


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

                Button {
                    DetailView = !DetailView
                } label: {
                    VStack{
                        Image(systemName: "ipad.and.iphone")
                            .font(.system(size: 40)).fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    .frame(width: 100,height: 100)
                    .background(Color(hex: "#F97C4B"))
                    .cornerRadius(100)}
                .sheet(isPresented: $DetailView) {
                    GroupView()
//                      .presentationDetents([.height(550)])

                    
                    
                        }
                
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
            
           
            
        }
        
        
    }
}



struct GroupInfo : View{
    var body: some View{
        VStack{
            
            HStack(spacing:15){
                
                
                    VStack{
                        Image(systemName: "ipad.and.iphone")
                            .font(.system(size: 40)).fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    .frame(width: 100,height: 100)
                    .background(Color(hex: "#F97C4B"))
                    .cornerRadius(100)
                       
                }
            .padding(.top)
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
               
                Text("Welcome to the Technology Enthusiasts subreddit! Join our community of tech-savvy individuals as we explore the exciting world of technology together. Whether you're a seasoned expert or a curious beginner, this group is the perfect place to discuss the latest gadgets, software, AI, cybersecurity, and everything tech-related. Share your insights, ask questions, and engage in lively discussions about the ever-evolving landscape of technology.")
                
                    
                    .font(.system(size: 14))
                    .foregroundColor(Color("TextGray"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,40)

                   
              
               
            }
            .frame(alignment: .center)
            .padding(.vertical,15)
            
           
            
        }
    }




struct GroupView : View{
   

    var body: some View{
        VStack{
            HStack{
            }
            .frame(height: 6)
            .frame(width: 100)
            .background(Color("Gray"))
            .cornerRadius(100)
            .padding()
            
           
            
            
            
            GroupInfo()
            HStack(spacing:-10){
                Image("u5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
                    .cornerRadius(40)
                Image("u3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
                    .cornerRadius(40)
                Image("u2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
                    .cornerRadius(40)
                Image("u4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
                    .cornerRadius(40)
                Image("u1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
                    .cornerRadius(40)
                Image("u6")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
                    .cornerRadius(40)
            }
            
            
            Spacer()
            
            HStack{
                Image(systemName: "link")
                Spacer()
                Text("https://www.reddit.com/t/television/")
                    .foregroundColor(.white)

                   
                
                
                
                    
            }
            .padding(.horizontal,10)
            .padding(10)
            .background(Color.init(hex: "2F303D"))
            
            .cornerRadius(10)
            .padding()

        }
        

    }
}

