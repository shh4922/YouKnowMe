import SwiftUI

struct TestVIew1: View {
    
    
    var body: some View {
        ZStack{
            Color("titleColor")
            VStack{
                Spacer()
                Image("test1")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .cornerRadius(10)
                Text("현호가 다니고있는 학교는?")
                    .font(.custom("GamjaFlower-Regular", size: 35))

                Cell(text: "광주대학교",point: 0)
                Cell(text: "목포대학교",point: 1)
                Cell(text: "조선대학교",point: 0)
                Cell(text: "호남대하교",point: 0)
                Cell(text: "서울대학교",point: 0)
                
                Spacer()
                Spacer()
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
        
    }
}
struct Cell : View {
    @EnvironmentObject var vm : Data
    let text : String
    let point : Int
    
    
    var body : some View{
        NavigationLink {
            TestView2()
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

struct TestVIew1_Previews: PreviewProvider {
    static var previews: some View {
        TestVIew1()
    }
}
