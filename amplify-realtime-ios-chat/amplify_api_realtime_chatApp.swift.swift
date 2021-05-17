//
//  amplify_api_realtime_chatApp.swift
//  amplify-api-realtime-chat
//
// Created by Archana Shokeen on 5/16/21.
// Copyright © 2021 Archana Shokeen. All rights reserved.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct amplify_api_realtime_chatApp: App {
    
    init() {
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            MessagesView()
        }
    }
    
    private func configureAmplify() {
        do {
            let models = AmplifyModels()
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: models))
            
            try Amplify.configure()
            
            print("Configured amplify")
        } catch {
            print("Couldnt configure amplify", error)
        }
    }
    
    
}