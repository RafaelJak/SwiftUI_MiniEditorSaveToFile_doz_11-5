//
//  DrawView.swift
//  SwiftUIDragAndDropBasic_doz_10
//
//  Created by Alexander Hoch on 18.01.21.
//  Copyright © 2021 zancor. All rights reserved.
//

//
//  ContentView.swift
//  SwiftUIDragAndDropBasic_doz_10
//
//  Created by Alexander Hoch on 15.01.21.
//  Copyright © 2021 zancor. All rights reserved.
//

import SwiftUI

struct Test: View {
    var body: some View {
       Text("")
    }
    
}

struct DrawView: View {
    
    @ObservedObject private var dm:DataController = DataController()
    
    @State var sliderValue:Double = 0
    
    
    
    @State var objIsVisible:Double = 0
    @State var settingsIsVisible:Double = 0
    @State var iTouched:Double = 0
   
    //==========
    @State var objID:Int         = 0
    @State var alphaObj:Double   = 1
    @State var colorObj          = Color.red
    
     //==========
    var body: some View {
            
                VStack{
                  Text("\(sliderValue)")
                   ZStack{
                   
                    if(iTouched == 1){
                        Text("CREATE NEW OBJECT").onAppear(){
                            //self.dm.objData.append(self.objID)
                            self.dm.addDragParam(objId: self.objID,alpha:self.sliderValue)
                            self.iTouched = 0
                        }.onTapGesture{
                            
                        }
                    }
                    
                    //==============-UPDATE SCREEN AUTOMATICAL-=============
                    ForEach(dm.objData) { obj in
                        DragView(param:obj).onTapGesture {
                                self.dm.objData.remove(at: self.dm.objData.count-1)
                    }
                       
                        
                   }
                    //===========================================
                    
                    }.onAppear(){
                       //self.dm.objData.append(0)
                    }
                    
                    VStack{
                                               ForEach(self.dm.objData) { obj in
                                                   Text("typid:\(obj.v)")
                                               }
                                           }
                    
                }.frame(width:700,height:1000)
                    .overlay(SettingsMenu(sliderValue:$sliderValue ).opacity(settingsIsVisible),alignment: .bottomTrailing)
                    .overlay(ObjectMenu(iTouched: $iTouched, objID: $objID).opacity(objIsVisible),alignment: .bottomLeading).overlay(Menu(objIsVisible: $objIsVisible, settingsIsVisible: $settingsIsVisible),alignment: .topLeading).onAppear(){
                        self.objIsVisible = 0
                        self.settingsIsVisible = 0
        }
        
    }
    
}












struct DrawView_Previews: PreviewProvider {
    static var previews: some View {
        DrawView()
    }
}

