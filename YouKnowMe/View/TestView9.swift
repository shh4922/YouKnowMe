//
//  TestView9.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/25.
//

import SwiftUI

struct TestView9: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test9")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(10)
                Text("현호는 잘생겼나요?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell9(text: "네",point: 1)
                Cell9(text: "네",point: 1)
                Cell9(text: "네",point: 1)
                Cell9(text: "네",point: 1)
                Cell9(text: "네",point: 1)
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
struct Cell9 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView10()
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

struct TestView9_Previews: PreviewProvider {
    static var previews: some View {
        TestView9()
    }
}
