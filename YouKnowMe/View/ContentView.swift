import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("titleColor")
                VStack(alignment: .center){
                    VStack(alignment: .leading){
                        
                        Text("당신은..")
                            .font(.custom("GamjaFlower-Regular", size: 50))
                            .foregroundColor(.black)
                        HStack{
                            Text("'신현호'")
                                .font(.custom("GamjaFlower-Regular", size: 50))
                                .foregroundColor(.purple)
                            Text("에 대해서")
                                .font(.custom("GamjaFlower-Regular", size: 50))
                                .foregroundColor(.black)
                        }
                        Text("얼마나...")
                            .font(.custom("GamjaFlower-Regular", size: 50))
                            .foregroundColor(.brown)
                        Text("아시나요....?")
                            .font(.custom("GamjaFlower-Regular", size: 50))
                            .foregroundColor(.brown)
                        Text("안궁금하면 말고...")
                            .font(.caption2)
                            .foregroundColor(Color(uiColor: .systemGray2))
                        
                    }
                    ZStack{
                        Image(systemName: "bubble.right")
                            .font(.system(size: 150))
                            .frame(width: 300,height: 100)
                            .padding(.horizontal)
                        VStack{
                            Text("날.. 클릭...해..")
                                .font(.custom("GamjaFlower-Regular", size: 25))
                            Text("ㅎ...ㅎ")
                                .font(.custom("GamjaFlower-Regular", size: 25))
                        }
                        .offset(y:-10)
                        
                    }
                    NavigationLink {
                        TestView()
                    } label: {
                        Image("titleImage")
                            .resizable()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(.black,lineWidth: 3))
                            .frame(width: 260,height: 260)
                            .shadow(color: .gray,radius: 10)
                    }
                    Spacer()
                }
                .padding(.vertical,50)
                .padding(10)
                
            }
            .ignoresSafeArea()
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
