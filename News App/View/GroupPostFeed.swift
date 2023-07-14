//
//  PostFeedView.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-09.
//

import SwiftUI


struct GroupPostFeed: View {
    
        @StateObject var viewModel:GroupPostModelView
       @Binding var btnClick : Bool
    @Binding var groupClick : Bool

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
                        
                        ForEach(viewModel.groupPost){ redditPost in
                            PostByGroupView(userView: $userView, btnClick: $btnClick, groupPost: redditPost, viewModel: viewModel)
                                
                                
                            
                        }
                        
                       
                    }
               
                }
            
           
           
                

            
        }
    }

struct GroupPostFeed_Previews: PreviewProvider {
    @State  static var btnClick : Bool = false
    @State  static var groupClick : Bool = false

    static var previews: some View {
        PostFeedView(viewModel: HomeModelView(), btnClick: $btnClick, groupClick: $groupClick)
    }
}

