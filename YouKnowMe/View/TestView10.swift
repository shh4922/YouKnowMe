//
//  TestView10.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/25.
//

import SwiftUI

struct TestView10: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test10")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(10)
                Text("2023.05.24일 에 현호가 만난 친구의 이름은 무엇인가요?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell10(text: "김홍희",point: 0)
                Cell10(text: "최배성",point: 0)
                Cell10(text: "김종화",point: 0)
                Cell10(text: "안겸",point: 1)
                Cell10(text: "최종명",point: 0)
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
struct Cell10 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView11()
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


struct TestView10_Previews: PreviewProvider {
    static var previews: some View {
        TestView10()
    }
}
