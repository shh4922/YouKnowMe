//
//  TestView2.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/24.
//

import SwiftUI

struct TestView2: View {
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test2")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(10)
                Text("현호가 졸업한 고등학교는?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell2(text: "인성고등학교",point: 1)
                Cell2(text: "동성고등학교",point: 0)
                Cell2(text: "살레시오여고",point: 0)
                Cell2(text: "광주여상고",point: 0)
                Cell2(text: "렛잇고",point: 0)
                
                Spacer()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

struct Cell2 : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView3()
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
struct TestView2_Previews: PreviewProvider {
    static var previews: some View {
        TestView2()
    }
}
