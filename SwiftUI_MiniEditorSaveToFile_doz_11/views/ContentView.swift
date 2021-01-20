//
//  ContentView.swift
//  SwiftUI_MiniEditorSaveToFile_doz_11
//
//  Created by Alexander Hoch on 18.01.21.
//  Copyright © 2021 zancor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @State private var v:Int = 0
    
    var body: some View {
       VStack{
        if(v == 0){
            Text("Hello, World!")
            Button(action: {self.v = 1}) {
                Text("Start")
                }
        }else{
            DrawView()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
