

import SwiftUI

struct ResultView: View {
    @EnvironmentObject var vm : Data
    var body: some View {
        ZStack{
            Color("titleColor")
            if vm.sum >= 10 {
                VStack(spacing: 20){
                    Text("축하합니다!")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("당신의 점수는 !!")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("\(vm.sum) 점!!!!")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    Text("입니다!!!!")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("답례로 제 사랑은 아니더라도 ")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("축하는 드리겠습니다!")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    
                }
            }else if vm.sum >= 7 {
                VStack(spacing: 20){
                    Text("에메하긴 한데...")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                        .padding(.top,100)
                    Text("당신의 점수는 ..")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("\(vm.sum) 점!")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    Text("입니다..!")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("뭐.. 나쁘진 않네여 ㅎ")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Spacer()
                }
            }
            else if vm.sum >= 4 {
                VStack(spacing: 20){
                    Text("아마도 당신은..")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                        .padding(.top,100)
                    Text("절 본지 오래된것 같네요..")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("연락좀 하시죠..")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("당신의 점수는 ")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("\(vm.sum) 점")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    Text("입니다")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("..ㅎ")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Spacer()
                }
            }
            else if vm.sum >= 0 {
                VStack(spacing: 20){
                    Text("절 알긴 아시나요..?")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                        .padding(.top,100)
                    Text("그쪽 점수는")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("\(vm.sum) 점")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    Text("입니다..")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Text("할많하않 입니다.. 당신..")
                        .font(.custom("GamjaFlower-Regular", size: 50))
                    Spacer()
                }
            }
            else {
                VStack(spacing: 20){
                    Text("어디의 누군진 모르겠지만.")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .padding(.top,100)
                    Text("당신은 정말 괘씸합니다")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("10점을 받고자 하는 그 욕심.")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("제 친구중 그런사람은 없습니다.")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("그쪽 점수는 ")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("\(vm.sum) 점")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    Text("아는척 하지 말아주세요.")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
            }
            
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
