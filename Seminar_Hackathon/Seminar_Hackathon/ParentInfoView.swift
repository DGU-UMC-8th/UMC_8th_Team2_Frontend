//
//  ParentInfoView.swift
//  Seminar_Hackathon
//
//  Created by 김도연 on 5/13/25.
//

import SwiftUI

struct ParentInfoView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var isSubmitted: Bool
    
    var body: some View {
        VStack{
            topbar
            
            Spacer()
            
            mainView
            
            bottomView
        }
        .navigationBarHidden(true)
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
        ScrollView{
            questionview
            questionview
            questionview
        }
    }
    
    var questionview: some View{
        VStack{
            Image("Question")
                .padding(.bottom, 20)
            
            Button{
                print("답변 1")
            }label:{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(.black, lineWidth: 2)
                        .frame(width: .infinity, height: 52)
                    Text("답변 1")
                        .font(.title3)
                        .tint(.black)
                }
                .padding(.horizontal)
            }
            
            Button{
                print("답변 2")
            }label:{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(.black, lineWidth: 2)
                        .frame(width: .infinity, height: 52)
                    Text("답변 2")
                        .font(.title3)
                        .tint(.black)
                }
                .padding(.horizontal)
            }
            
            Button{
                print("답변 3")
            }label:{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(.black, lineWidth: 2)
                        .frame(width: .infinity, height: 52)
                    Text("답변 3")
                        .font(.title3)
                        .tint(.black)
                }
                .padding(.horizontal)
            }
        }
        .padding(.vertical)
    }
    
    var bottomView: some View{
        VStack{
            Button{
                print("제출")
                isSubmitted = true
                print(isSubmitted)
                dismiss()
            }label:{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(.black, lineWidth: 2)
                        .fill(.black)
                        .frame(width: .infinity, height: 52)
                    Text("제출하기")
                        .font(.title3)
                        .tint(.white)
                }
                .padding(.top, 20)
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ParentInfoView(isSubmitted: .constant(false))
}
