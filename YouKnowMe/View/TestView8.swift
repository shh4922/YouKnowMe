//
//  TestView8.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/25.
//

import SwiftUI

struct TestView8: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test8")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(10)
                Text("현호의 이상형의 얼굴 상은?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell8(text: "고양이 상",point: 0)
                Cell8(text: "강아지 상",point: 0)
                Cell8(text: "건들면 울것같은 상",point: 1)
                Cell8(text: "토끼 상",point: 0)
                Cell8(text: "곰 상",point: 0)
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
struct Cell8 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView9()
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
struct TestView8_Previews: PreviewProvider {
    static var previews: some View {
        TestView8()
    }
}
