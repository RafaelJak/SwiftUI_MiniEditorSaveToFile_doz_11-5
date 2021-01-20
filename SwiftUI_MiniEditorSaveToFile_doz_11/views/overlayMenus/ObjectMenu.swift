//
//  ObjectMenu.swift
//  SwiftUI_MiniEditorSaveToFile_doz_11
//
//  Created by Alexander Hoch on 19.01.21.
//  Copyright © 2021 zancor. All rights reserved.
//

import Foundation
import SwiftUI

struct ObjectMenu: View {

    @Binding var iTouched:Double
    @Binding var objID:Int
    var body: some View {
        HStack{
            Image(systemName: "plus.rectangle")
                           .padding()
                           .background(Color.black.opacity(0.5))
                .clipShape(Circle()).onTapGesture {
                    self.iTouched = 1
                    self.objID = 0
            }
            Image(systemName: "plus.circle")
            .padding()
            .background(Color.black.opacity(0.5))
             .clipShape(Circle()).onTapGesture {
                     self.iTouched = 1
                    self.objID = 1
             }
            
            Image(systemName: "photo")
            .padding()
            .background(Color.black.opacity(0.5))
             .clipShape(Circle())
        }
    }
    
}

struct Test2:View {
    @State var iTouched:Double = 0
    @State var objID:Int = 0
    var body: some View {
    VStack{
          ObjectMenu(iTouched: $iTouched, objID: $objID)
            Text("iTouched:\(iTouched)")
            Text("objID:\(objID)")
                }
            }
            
        }

struct ObjectMenu_Previews: PreviewProvider {
 
    static var previews: some View {
        Test2()
    }
}
