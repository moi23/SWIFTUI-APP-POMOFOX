    //
    //  File.swift
    //  PomoFox-SWIFTUI
    //
    //  Created by dev on 14/04/22.
    //

import SwiftUI

struct SplashView: View{
    
    @ObservedObject var viewModel: SplashViewModel

    var body: some View {
        Group{
            switch viewModel.uiState {
                case .loading:
                    loadingView()
                        //Navegar para a próxima tela
                case .goToSignInScreen:
                    Text("Sign in Screen")
                    
                        //Navegar para a próxima tela
                case .goToHomeScreen:
                    Text("Home Screen")
                    
                case .error(let msg):
                    loadingView(error: msg)
            }
        }.onAppear(perform: viewModel.onAppear)
    }
}


// 3. Funções em Extensões
extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack{
            Image("pomoFoxLogo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .padding(80)
                .ignoresSafeArea()
            
            if let error = error{
                Text("")
                    .alert(isPresented: .constant(true)){
                        Alert(title: Text("Pomofox"), message: Text(error), dismissButton: .default(Text("OK")){
                          //Faz algo quando some o alaerta
                    })
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SplashViewModel()
        SplashView(viewModel: viewModel)
    }
}
