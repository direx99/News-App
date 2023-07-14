//
//  PostFeedView.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-09.
//

import SwiftUI


struct CommunityFeedView: View {
    
        @StateObject var viewModel:HomeModelView
       @Binding var btnClick : Bool
    @Binding var groupClick : Bool
    
    @State var tapme : Bool = false

        @State var userView: Bool = false
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
                       
                        ForEach(viewModel.communityPost){ redditPost in
                                PostView(userView:$userView, btnClick: $btnClick, groupClick: $groupClick, tapme: $tapme, redditPost: redditPost, viewModel: viewModel)
                                    
                                
                            }
                        
                        
                       
                    }
               
                }
            
           
           
                

            
        }
    }

struct CommunityFeedView_Previews: PreviewProvider {
    @State  static var btnClick : Bool = false
    @State  static var groupClick : Bool = false
    @State  static var selectedType : String = "Popular"

    static var previews: some View {
        PostFeedView(viewModel: HomeModelView(), btnClick: $btnClick, groupClick: $groupClick, selectedType: $selectedType)
    }
}

