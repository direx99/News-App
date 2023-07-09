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
            KFImage(URL(string:"https://www.telegraph.co.uk/content/dam/business/2023/06/06/TELEMMGLPICT000338366496_16860106284790_trans_NvBQzQNjv4BqqVzuuqpFlyLIwiB6NTmJwfyKvq_nGV8CVExf4qSbkzM.jpeg"))
            
                .resizable()
                .scaledToFill()
                .frame(height: 400)
            Spacer()
            Text("\(redditPost.time)")
            
           
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("BgColor"))
    }
        
}

struct DetailPost_Previews: PreviewProvider {
    
    
    static var previews: some View {

        DetailPost( redditPost: RedditPost(id: "", title: "", community: "", time: "", image: "", comments: 0, likes: 0, user: "",v: 0))
    }
}
