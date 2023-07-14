//
//  GroupPost.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-01.
//

import SwiftUI

struct CommunityPost: View {
    @State var joinGroup: Bool = false
    @State var moreBtn: Bool = false
    @State var DetailView: Bool = false
    @StateObject var viewModel:HomeModelView

    @Binding var btnClick:Bool
    
    @Binding var groupClick:Bool


    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                VStack{
                    
                    HStack{
                        Group{
                            
                            
                            
                            
                            NavigationLink(destination: HomeView(viewModel: viewModel)){
                                
                                
                                Image(systemName: "chevron.left")
                            }
                            .navigationBarHidden(true)

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
                   GroupAbout(joinGroup: $joinGroup, DetailView: $DetailView)
                    HStack{
                        Spacer()
                    }
                    .frame(height: 6)
                    .background(Color("Black1"))
                    .padding(.top)
                    .padding(.horizontal,-20)
                    CommunityFeedView(  viewModel: viewModel, btnClick: $btnClick, groupClick: $groupClick)
                    
                    
                    
                    
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
}


struct CommunityPost_Previews: PreviewProvider {
    @State static var joinGroup = false
    @State static var DetailView = false
    @State static var btnClick = false
    @State static var groupClick = false


    
    static var previews: some View {
        CommunityPost(viewModel: HomeModelView(), btnClick: $btnClick, groupClick:$groupClick )

    }
}








