//
//  SettingsMenu.swift
//  SwiftUI_MiniEditorSaveToFile_doz_11
//
//  Created by Alexander Hoch on 19.01.21.
//  Copyright © 2021 zancor. All rights reserved.
//

import Foundation
import SwiftUI

struct SettingsMenu: View {
    @Binding var sliderValue:Double
   // @State var sliderValue:CGFloat = 0
    var body: some View {
        VStack{
            
            Slider(value: $sliderValue).frame(width:200,height:100)
        }.onAppear{
            self.sliderValue = 0.5
        }.frame(width:300,height:100,alignment:.center).background(Color.gray).cornerRadius(10).foregroundColor(Color.white)
    }
    
}


struct Test3:View {
    @State var sliderValue:Double = 0
   
    var body: some View {
    VStack{
        SettingsMenu(sliderValue:$sliderValue)
            Text("sliderValue:\(sliderValue)")
            
                }
            }
            
        }

struct SettingsMenu_Previews: PreviewProvider {

    static var previews: some View {
        Test3()
    }
}

