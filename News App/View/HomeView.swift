//
//  HomeView.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-01.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    @StateObject var viewModel:HomeModelView


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
                    
                    PostFeedView(viewModel: viewModel)
                    
                    
                    
                    
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
        HomeView(viewModel: HomeModelView())
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


