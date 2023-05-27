//
//  TestView6.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/25.
//

import SwiftUI

struct TestView6: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test6")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(10)
                Text("보너스라운드")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell6(text: "1점받기",point: 1)
                Cell6(text: "1점받기",point: 1)
                Cell6(text: "1점받기",point: 1)
                Cell6(text: "10점받기",point: -10)
                Cell6(text: "1점받기",point: 1)
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
struct Cell6 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView7()
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

struct TestView6_Previews: PreviewProvider {
    static var previews: some View {
        TestView6()
    }
}
