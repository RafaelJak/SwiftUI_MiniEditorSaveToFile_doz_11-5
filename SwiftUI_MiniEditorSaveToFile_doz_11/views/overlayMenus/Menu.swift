//
//  Menu.swift
//  SwiftUI_MiniEditorSaveToFile_doz_11
//
//  Created by Alexander Hoch on 19.01.21.
//  Copyright © 2021 zancor. All rights reserved.
//

import Foundation
import SwiftUI

struct Menu: View {

    @Binding var objIsVisible:Double
    @Binding var settingsIsVisible:Double
   
    @State var objOpacity:Double = 1
    @State var settingsOpacity:Double = 1
    
    var body: some View {
        HStack{
                               AddBtnView(txt:"objects").onTapGesture {
                                   print("1")
                                if(self.objIsVisible == 0){
                                    self.objOpacity = 0.6
                                    self.objIsVisible = 1
                                    
                                }else{
                                    self.objOpacity = 1
                                    self.objIsVisible = 0
                                    
                                }
                                
                               }.opacity(objOpacity).foregroundColor(Color.white)
            
                               AddBtnView(txt:"settings").onTapGesture {
                                   if(self.settingsIsVisible == 0){
                                    self.settingsIsVisible = 1
                                    self.settingsOpacity = 0.6
                                   }else{
                                    self.settingsIsVisible = 0
                                    self.settingsOpacity = 1
                                    
                                }
                               }
            }.opacity(settingsOpacity).frame(width:300,height:100,alignment:.center).background(Color.gray).cornerRadius(10).foregroundColor(Color.white)
    }
    

}


struct Test4:View {
    @State var objIsVisible:Double = 0
    @State var settingsIsVisible:Double = 0
   
    var body: some View {
    VStack{
        Menu(objIsVisible: $objIsVisible, settingsIsVisible: $settingsIsVisible)
            Text("objIsVisible:\(objIsVisible)")
             Text("settingsIsVisible:\(settingsIsVisible)")
                }
            }
            
        }

struct Menu_Previews: PreviewProvider {

    static var previews: some View {
        Test4()
    }
}
