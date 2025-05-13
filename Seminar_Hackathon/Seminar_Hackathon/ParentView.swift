//
//  ParentView.swift
//  Seminar_Hackathon
//
//  Created by 김도연 on 5/13/25.
//

import SwiftUI

struct ParentView: View {
    @Environment(\.dismiss) var dismiss
    @State private var isSubmitted = false
    
    var body: some View {
        NavigationStack{
            VStack{
                topbar
                
                Spacer()
                
                mainView
                
                bottombar
            }
            .navigationBarHidden(true)
        }
    }
    
    var topbar: some View{
        HStack{
            VStack{
                Text("평생")
                    .font(.title)
                    .frame(maxWidth: .infinity)
            }
            .overlay(alignment: .leading){
                Button{
                    dismiss()
                } label:{
                    Image(systemName: "arrowshape.left.fill")
                }
                .tint(.black)
            }
            .padding()
        }
    }
    
    var mainView: some View{
        VStack{
            HStack(alignment: .top){
                Image("ProductImage")
                VStack{
                    Image("ProductInfo")
                    Text("일자리 사진 및 정보")
                        .padding()
                }
            }
            Spacer()
            
            if isSubmitted{
                Text("신청이 완료되었습니다.")
                    .font(.title2)
                    .foregroundStyle(.red)
            }
            
            Rectangle()
                .foregroundStyle(.black)
                .frame(height: 4)
                .padding(.horizontal)
        }
        .padding(.top, 80)
    }
    
    var bottombar: some View{
        VStack(alignment: .center) {
            HStack(spacing: 20){
                NavigationLink(destination: ParentInfoView(isSubmitted: $isSubmitted)){
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(.black, lineWidth: 2)
                            .frame(width: 160, height: 52)
                        Text("신청")
                            .font(.title3)
                            .tint(.black)
                    }
                }
                
                Button{
                    
                }label:{
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(.black, lineWidth: 2)
                            .fill(.black)
                            .frame(width: 160, height: 52)
                        Text("저장")
                            .font(.title3)
                            .tint(.white)
                    }
                }
            }
            .padding(.vertical, 80)
        }
    }
}

#Preview {
    ParentView()
}
