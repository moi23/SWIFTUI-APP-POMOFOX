    //
    //  File.swift
    //  PomoFox-SWIFTUI
    //
    //  Created by dev on 14/04/22.
    //

import SwiftUI

struct SplashView: View{
    
    @State var state: SplashUIState = .loading

    var body: some View {
        switch state {
            case .loading:
                loadingView()
            //Navegar para a próxima tela
            case .goToSignInScreen:
                Text("sIGN SCREEN")
                
            //Navegar para a próxima tela
            case .goToHomeScreen:
                Text("Home Screen")
                
            case .error(let msg):
                Text("Mostrar erro: \n\(msg)")
        }
    }
}

/**
// 1. Compartilhamento de Objetos.
struct LoadingView: View{
    var body: some View{
        ZStack{
            Image("pomoFoxLogo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .padding(80)
                .ignoresSafeArea()
        }
    }
}
*/

/**
// 2. Váriaveis em Extensões.
extension SplashView {
    var loading: some View {
        ZStack{
            Image("pomoFoxLogo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .padding(80)
                .ignoresSafeArea()
        }
    }
}
*/
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
        }
    }
}


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .error("Hello"))
    }
}
