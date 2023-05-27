//
//  TestView3.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/24.
//

import SwiftUI

struct TestView3: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test3")
                    .resizable()
                    .frame(width: 200,height: 200)
                    .cornerRadius(10)
                Text("현호의 MBTI는?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell3(text: "infp",point: 0)
                Cell3(text: "istp",point: 1)
                Cell3(text: "isfp",point: 0)
                Cell3(text: "esfp",point: 0)
                Cell3(text: "intp",point: 0)
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
struct Cell3 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView4()
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
struct TestView3_Previews: PreviewProvider {
    static var previews: some View {
        TestView3()
    }
}
