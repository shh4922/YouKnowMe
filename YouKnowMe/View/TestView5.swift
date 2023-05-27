//
//  TestView5.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/24.
//

import SwiftUI

struct TestView5: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test5")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(10)
                Text("현호가 일하던 옛점장님의 이름의 '성' 은?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell5(text: " '조' 씨",point: 1)
                Cell5(text: " '김' 씨",point: 0)
                Cell5(text: " '박' 씨",point: 0)
                Cell5(text: " '부' 씨",point: 0)
                Cell5(text: " '신' 씨",point: 0)
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
struct Cell5 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView6()
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
struct TestView5_Previews: PreviewProvider {
    static var previews: some View {
        TestView5()
    }
}
