//
//  TestView4.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/24.
//

import SwiftUI

struct TestView4: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test4")
                    .resizable()
                    .frame(width: 200,height: 200)
                    .cornerRadius(10)
                Text("현호의 주량은?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell4(text: "소주1병",point: 0)
                Cell4(text: "소주2병",point: 0)
                Cell4(text: "소주1잔",point: 1)
                Cell4(text: "맥주500cc",point: 0)
                Cell4(text: "맥주3000cc",point: 0)
                
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
struct Cell4 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView5()
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

struct TestView4_Previews: PreviewProvider {
    static var previews: some View {
        TestView4()
    }
}
