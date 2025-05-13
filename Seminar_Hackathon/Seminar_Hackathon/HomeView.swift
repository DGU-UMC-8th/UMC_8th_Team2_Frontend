//
//  HomeView.swift
//  Seminar_Hackathon
//
//  Created by 김도연 on 5/13/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                topbar
                
                Spacer()
                
                mainView
                
                Spacer()
            }
        }
    }
    
    var topbar: some View{
        HStack{
            VStack{
                Text("평생")
                    .font(.title)
                    .frame(maxWidth: .infinity)
            }
        }
    }
    
    var mainView: some View{
        VStack{
            HStack(spacing: 24){
                NavigationLink(destination: ParentView()){
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                                    .strokeBorder(.black, lineWidth: 2)
                                    .frame(width: 144, height: 144)
                                    .background(.white)
                        Text("부모")
                            .font(.title2)
                            .bold()
                            .tint(.black)
                    }
                }
                NavigationLink(destination: Text("자녀 로그인 뷰")){
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                                    .strokeBorder(.black, lineWidth: 2)
                                    .frame(width: 144, height: 144)
                                    .background(.white)
                        Text("자녀")
                            .font(.title2)
                            .bold()
                            .tint(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
