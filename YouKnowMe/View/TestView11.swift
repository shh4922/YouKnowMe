//
//  TestView11.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/25.
//

import SwiftUI

struct TestView11: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test11")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(10)
                Text("현호의 키는 몇센티 일까요?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell11(text: "175.3",point: 0)
                Cell11(text: "177.3",point: 0)
                Cell11(text: "172.4",point: 1)
                Cell11(text: "173.5",point: 0)
                Cell11(text: "171.8",point: 0)
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
struct Cell11 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView12()
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


struct TestView11_Previews: PreviewProvider {
    static var previews: some View {
        TestView11()
    }
}
