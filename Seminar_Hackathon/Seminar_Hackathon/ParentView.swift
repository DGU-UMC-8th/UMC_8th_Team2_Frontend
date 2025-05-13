//
//  ParentView.swift
//  Seminar_Hackathon
//
//  Created by 김도연 on 5/13/25.
//

import SwiftUI

struct ParentView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            topbar
            
            Spacer()
            
            mainView
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
        VStack{
            HStack{
                Image("ProductImage")
                
                Image("ProductInfo")
            }
            .border(.black)
        }
    }
}

#Preview {
    ParentView()
}
