//
//  DetailPost.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-09.
//

import SwiftUI
import Kingfisher

struct DetailPost: View {
    let redditPost: RedditPost

    var body: some View {
        VStack{
            VStack{
                
            }
            .frame(height: 300)
            .background(
                KFImage(URL(string:"https://www.telegraph.co.uk/content/dam/business/2023/06/06/TELEMMGLPICT000338366496_16860106284790_trans_NvBQzQNjv4BqqVzuuqpFlyLIwiB6NTmJwfyKvq_nGV8CVExf4qSbkzM.jpeg"))
                
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)

                  )
            Text("\(redditPost.title)")
                .font(.system(size: 30))
                .foregroundColor(.white)
           
            Text("\(redditPost.time)")
            
            

           
            Spacer()
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("BgColor"))
        .navigationTitle(
            Text("r\(redditPost.community)")
                .foregroundColor(Color.white)
        )
        
    }
        
}

struct DetailPost_Previews: PreviewProvider {
    
    
    static var previews: some View {

        DetailPost( redditPost: RedditPost(id: "", title: "", community: "", image: "", comments: 0, likes: 0, time: 0, user: "",v: 0))
    }
}


