//
//  Test.swift
//  SwiftUI_MiniEditorSaveToFile_doz_11
//
//  Created by Alexander Hoch on 18.01.21.
//  Copyright © 2021 zancor. All rights reserved.
//

import Foundation

import SwiftUI

struct AddBtnView: View {
   let txt:String
   var body: some View {
        HStack{
            Image(systemName: "plus.circle")
                .padding()
                .background(Color.black.opacity(0.5))
                 .clipShape(Circle())
            Text(txt)
         }
    }
}

struct AddBtn_Previews: PreviewProvider {
    static var previews: some View {
        AddBtnView(txt:"LOL")
    }
}
