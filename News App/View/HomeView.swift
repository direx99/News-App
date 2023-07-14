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
    @State private var btnClick:Bool = false
    @State var groupClick: Bool = false
    @State var selectedType: String = "Recent"



    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                
                
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("Saturday, July 15th")
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
                    HStack(spacing: 10){
                        
                      
                                           TypeButton(title: "Recent", isSelected: selectedType == "Recent") {
                                               selectedType = "Recent"
                                           }
                        TypeButton(title: "Popular", isSelected: selectedType == "Popular") {
                                               selectedType = "Popular"
                                           }
                                           TypeButton(title: "Favorite", isSelected: selectedType == "Favorite") {
                                               selectedType = "Favorite"
                                           }
                                           
                        
                    }
                    .padding(.top,10)
                    
                    HStack{
                        Spacer()
                    }
                    .frame(height: 6)
                    .background(Color("Black1"))
                    .padding(.top)
                    .padding(.horizontal,-40)
                    
                    PostFeedView(viewModel: viewModel, btnClick:$btnClick, groupClick: $groupClick, selectedType: $selectedType)
                    
                    
                    
                    
                    Spacer()
                }
                .padding()
                
            }
            .padding(.top)
            .background(Color("BgColor"))
            .blur(radius: btnClick ? 15 :0)

            
            
        }

        .navigationBarHidden(true)

    }
    
}


struct HomeView_Previews: PreviewProvider {

    static var previews: some View {
        HomeView(viewModel: HomeModelView())
    }
}


struct NewsTypeSelected : View{
    var body: some View{
        
        Button {
           print("hhh")
        } label: {
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
    
}

struct NewsType : View{
    var body: some View{
        
        Button {
           print("hhh")
        } label: {
            Text("Popular")
            
                .foregroundColor(.white)
                .padding(6)
                .padding(.horizontal,25)
                .background(Color("Gray"))
                .cornerRadius(30)
                .font(.system(size: 12))
                .fontWeight(.semibold)
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


struct TypeButton: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 14)).fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.vertical,7)
                .font(.headline)
                .background(isSelected ? Color(hex: "1CAEFD") : Color(hex:"2D2E36"))
                .foregroundColor(Color.white)
                .cornerRadius(50)
        }
    }
}
