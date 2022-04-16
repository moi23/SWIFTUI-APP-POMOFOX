//
//  SplashViewModel.swift
//  PomoFox-SWIFTUI
//
//  Created by dev on 16/04/22.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
        // Faz algo assincrono. e deve mudar o estado da UISTATE
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
//            self.uiState = .goToSignInScreen
            self.uiState = .error("ERRO NA RESPOSTA DO SERVIDOR PARSEIRO.")
        }
        
    }
}
