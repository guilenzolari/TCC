//
//  TCCApp.swift
//  TCC
//
//  Created by Guilherme Ferreira Lenzolari on 23/04/24.
//

import SwiftUI

@main
struct TCCApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @StateObject var inserirDadosViewController = InserirDadosViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                if isOnboarding{
                    OnboardingView()
                } else {
                    MainView()
                }
            }
        }.environmentObject(inserirDadosViewController)
    }
}
