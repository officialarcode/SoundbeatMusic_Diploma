//
//  AuthorizationView.swift
//  SoundbeatMusic
//
//  Created by Арсений Морозов on 14.01.2026.
//

import SwiftUI

struct AuthorizationView: View {
    
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 24) {
                Text("Авторизация")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 100)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 20) {
                    // Email / username
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Email или имя пользователя")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white.opacity(0.9))
                        
                        TextField("", text: $login)
                            .padding(.horizontal, 12)
                            .frame(height: 46)
                            .background(Color.white.opacity(0.08))
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.white.opacity(0.4), lineWidth: 1)
                            )
                            .foregroundColor(.white)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .textContentType(.username)
                    }
                    
                    // Password
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Пароль")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white.opacity(0.9))
                        
                        SecureField("", text: $password)
                            .padding(.horizontal, 12)
                            .frame(height: 46)
                            .background(Color.white.opacity(0.08))
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.white.opacity(0.4), lineWidth: 1)
                            )
                            .foregroundColor(.white)
                            .textContentType(.password)
                    }
                }
                .padding(.horizontal, 32)
                
                Button(action: {
                    // TODO: обработка авторизации
                }) {
                    Text("Продолжить")
                        .font(.system(size: 17, weight: .semibold))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                .padding(.horizontal, 32)
                .padding(.bottom, 40)
                
                Spacer()
                
                HStack {
                    Text("Нет аккаунта?")
                        .foregroundColor(.white)
                        .font(.subheadline)
                    
                    Button("Зарегистрироваться") {
                       
                    }
                    .foregroundColor(.pink)
                }
                .padding(.bottom, 30)
            }
        }
    }
}

#Preview {
    AuthorizationView()
}
