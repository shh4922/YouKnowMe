//
//  TestView12.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/25.
//

import SwiftUI

struct TestView12: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test12")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(10)
                Text("마지막 질문입니다!\n 현호의 insta계정 이름은?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell12(text: "oh_hyeonho",point: 0)
                Cell12(text: "oh__hyeonho",point: 1)
                Cell12(text: "hyeonho_sin",point: 0)
                Cell12(text: "ios_hyeon",point: 0)
                Cell12(text: "hyeonho__sin",point: 0)
                
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
struct Cell12 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            ResultView()
        } label: {
            Text(text)
                .padding(10)
                .frame(width: 300)
                .foregroundColor(.black)
                .background(.white)
                .cornerRadius(20)
                .shadow(radius: 10)
        }
        .simultaneousGesture(TapGesture().onEnded{
            vm.sum += point
            print(vm.sum)
        })
    }
}



struct TestView12_Previews: PreviewProvider {
    static var previews: some View {
        TestView12()
    }
}
