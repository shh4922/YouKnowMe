//
//  TestView.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/24.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        
        ZStack{
            Color("titleColor")
            VStack{
                Image("mainImage")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(20)
                VStack(spacing: 10){
                    Text("지금부터")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("제1회!")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("제1회 신현호 모의평가 를")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("실시하겠습니다.")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    NavigationLink {
                        TestVIew1()
                    } label: {
                        Text("Start!")
                            .font(.custom("GamjaFlower-Regular", size: 25))
                            .padding()
                            .background(.green)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                    }
                    
                }
                Spacer()
            }
            
            .padding(.top,60)
            
        }
        .ignoresSafeArea()
        
        
        
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
