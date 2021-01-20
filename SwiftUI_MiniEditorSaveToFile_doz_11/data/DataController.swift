//
//  DataController.swift
//  SwiftUI_MiniEditorSaveToFile_doz_11
//
//  Created by Alexander Hoch on 19.01.21.
//  Copyright © 2021 zancor. All rights reserved.
//

import Foundation
import SwiftUI

struct Param:Identifiable {
    let id = UUID()    
    var position:CGPoint     =  CGPoint(x: 150, y: 150)
    var color:Color          =  Color.orange
    var v:Int                =  0
    var alpha:Double         =  0.2
}


class DataController:ObservableObject{
        
    @Published var objData: [Param] = []
    
    func addDragParam(objId:Int,alpha:Double){
        objData.append(Param(v:objId,alpha: alpha))
    }
   
}
