//
//  DragView.swift
//  SwiftUIDragAndDropBasic_doz_10
//
//  Created by Alexander Hoch on 18.01.21.
//  Copyright © 2021 zancor. All rights reserved.
//

import Foundation
import SwiftUI


struct DragView: View {
    
    
    @State var param:Param
        
    var body: some View {
        VStack{
           
            if(param.v == 0){
                CView(param: param)
            }
            if(param.v == 1){
                RView(param: param)
            }
        }
       
    }
    
}

struct CView: View {
    
    
    @State var param:Param = Param()
    @State private var zind = 1.0
    @State var op = 1.0
    @State var startPos:CGPoint = CGPoint(x: 150, y: 150)
    
    var body: some View {
        GeometryReader { geo in
            Circle().fill(self.param.color)
                .frame(width: 100, height: 100)
            .zIndex(self.zind).opacity(self.op)
                .position(self.param.position)
            .gesture(
                DragGesture().onChanged({ view in
                    self.param.position = view.location
                    self.zind = 100
                    print(view.location)
                }).onEnded(){ view in
                    self.zind = 10
                        
                          /*  if(view.location.y > geo.size.height/3){
                                self.op = 0.2
                            }else{
                                self.param.position = self.startPos
                                self.op = 1
                            }*/
                       }
                  
            ).onAppear(){
                //self.op = self.param.alpha
                self.op = self.param.alpha
                self.startPos = self.param.position
            }
            
        
        }
    
  }
}

struct LineView: View {
    
    var p1:CGPoint
    var p2:CGPoint
    var h:CGFloat = 1
    
    var body: some View {
        Path{ path in
            path.move(to: p1)
            path.addLine(to: p2)
            path.addLine(to: CGPoint(x: p2.x,y: p2.y+h))
            path.addLine(to: CGPoint(x: p1.x,y: p2.y+h))
        }.fill(Color.red)
    }
    
}

struct RView: View {
    
    
    @State var param:Param = Param()
    @State private var zind = 1.0
        @State private var op = 1.0
    
    var body: some View {
           GeometryReader { geo in
            RoundedRectangle(cornerRadius: 5.0).fill(self.param.color)
            .frame(width: 100, height: 100)
                .zIndex(self.zind)
                .opacity(self.op)
                .position(self.param.position).animation(Animation.easeOut)
            .gesture(
                DragGesture().onChanged({ view in
                    self.param.position = view.location
                    self.zind = 100
                    print(view.location)
                }).onEnded(){ view in
                    self.zind = 10
                   
                }
        ).onAppear(){
            //self.op = self.param.alpha
            self.op = self.param.alpha
            
        }
        }
    }
}



