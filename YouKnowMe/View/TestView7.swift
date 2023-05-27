//
//  TestView7.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/25.
//

import SwiftUI


struct TestView7: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test7")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(10)
                Text("사진에 보이는 현호의 나이는?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell7(text: "12살",point: 0)
                Cell7(text: "13살",point: 0)
                Cell7(text: "14살",point: 0)
                Cell7(text: "15살",point: 1)
                Cell7(text: "16살",point: 0)
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
struct Cell7 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView8()
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
struct TestView7_Previews: PreviewProvider {
    static var previews: some View {
        TestView7()
    }
}
