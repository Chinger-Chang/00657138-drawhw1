//
//  ContentView.swift
//  drawhw1
//
//  Created by User15 on 2020/3/12.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //background
            Image("sky")
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            Group {
                //leftfoot
                Path(ellipseIn: CGRect(x: 150, y: 460, width: 70,height: 90))
                .fill(Color.white)
                .rotationEffect(.init(degrees: 10))
                Path(ellipseIn: CGRect(x: 150, y: 460, width: 70,height: 90))
                .stroke(Color.black, lineWidth: 2)
                .rotationEffect(.init(degrees: 10))
                //rightfoot
                Path(ellipseIn: CGRect(x: 190, y: 460, width: 70,height: 90))
                .fill(Color.white)
                .rotationEffect(.init(degrees: -10))
                Path(ellipseIn: CGRect(x: 190, y: 460, width: 70,height: 90))
                .stroke(Color.black, lineWidth: 2)
                .rotationEffect(.init(degrees: -10))
            }
            //body
            Group {
                Path { (path) in
                path.move(to: CGPoint(x: 110, y: 385))
                path.addLine(to: CGPoint(x: 80, y: 370))
                path.addLine(to: CGPoint(x: 70, y: 400))
                path.addQuadCurve(to: CGPoint(x: 130, y: 450), control:CGPoint(x: 80, y: 420))
                path.addLine(to: CGPoint(x: 140, y: 480))
                path.addQuadCurve(to: CGPoint(x: 203, y: 500), control:CGPoint(x: 130, y: 520))
                path.addQuadCurve(to: CGPoint(x: 266, y: 480), control:CGPoint(x: 276, y: 520))
                path.addLine(to: CGPoint(x: 276, y: 450))
                path.addQuadCurve(to: CGPoint(x: 336, y: 400), control:CGPoint(x: 326, y: 420))
                path.addLine(to: CGPoint(x: 326, y:370))
                path.addLine(to: CGPoint(x: 296,y:385))
                path.closeSubpath()
                }
                .fill(Color(red:1/255,green:159/255,blue:233/255))
                Path { (path) in
                path.move(to: CGPoint(x: 110, y: 385))
                path.addLine(to: CGPoint(x: 80, y: 370))
                path.addLine(to: CGPoint(x: 70, y: 400))
                path.addQuadCurve(to: CGPoint(x: 130, y: 450), control:CGPoint(x: 80, y: 420))
                path.addLine(to: CGPoint(x: 140, y: 480))
                path.addQuadCurve(to: CGPoint(x: 203, y: 500), control:CGPoint(x: 130, y: 520))
                path.addQuadCurve(to: CGPoint(x: 266, y: 480), control:CGPoint(x: 276, y: 520))
                path.addLine(to: CGPoint(x: 276, y: 450))
                path.addQuadCurve(to: CGPoint(x: 336, y: 400), control:CGPoint(x: 326, y: 420))
                path.addLine(to: CGPoint(x: 326, y:370))
                path.addLine(to: CGPoint(x: 296,y:385))
                path.closeSubpath()
                }
                .stroke(Color.black, lineWidth: 2)
                //lefthand
                Path(ellipseIn: CGRect(x: 40, y: 360, width: 50,height: 50))
                .fill(Color.white)
                Path(ellipseIn: CGRect(x: 40, y: 360, width: 50,height: 50))
                .stroke(Color.black, lineWidth: 2)
                //righthand
                Path(ellipseIn: CGRect(x: 320, y: 360, width: 50,height: 50))
                .fill(Color.white)
                Path(ellipseIn: CGRect(x: 320, y: 360, width: 50,height: 50))
                .stroke(Color.black, lineWidth: 2)
                //stomach
                Path(ellipseIn: CGRect(x: 142, y: 440, width: 120,height: 50))
                .fill(Color.white)
                Path(ellipseIn: CGRect(x: 142, y: 440, width: 120,height: 50))
                .stroke(Color.black, lineWidth: 2)
                //pocket
                Path { (path) in
                path.move(to: CGPoint(x: 152, y: 465))
                path.addQuadCurve(to: CGPoint(x: 252, y: 465), control:CGPoint(x: 202, y: 500))
                path.closeSubpath()
                }
                .stroke(Color.black, lineWidth: 2)
            }
            //takecopter
            Group {
                Upoftakecopter0(positionX: 40, positionY: 100, rotationDegrees: 0)
                Upoftakecopter1(positionX: 40, positionY: 100, rotationDegrees: 0)
                Upoftakecopter0(positionX: 45, positionY: 115, rotationDegrees: -5)
                Upoftakecopter0(positionX: 48, positionY: 85, rotationDegrees: 5)
                Path(CGRect(x: 195, y: 122, width: 8,
                height: 50))
                .fill(Color(red:250/255,green:250/255,blue:15/255))
                Path(CGRect(x: 195, y: 122, width: 8,
                height: 50))
                .stroke(Color.black, lineWidth: 2)
                Path(ellipseIn: CGRect(x: 188, y: 170, width: 25,height: 25))
                .fill(Color(red:250/255,green:250/255,blue:15/255))
                Path(ellipseIn: CGRect(x: 188, y: 170, width: 25,height: 25))
                .stroke(Color.black, lineWidth: 2)
                Path(roundedRect: CGRect(x: 192, y: 115, width: 15,
                height: 10), cornerRadius: 20)
                .fill(Color(red:250/255,green:250/255,blue:15/255))
                Path(roundedRect: CGRect(x: 192, y: 115, width: 15,
                height: 10), cornerRadius: 20)
                .stroke(Color.black, lineWidth: 2)
            }
            //face
            Group {
            Path(ellipseIn: CGRect(x: 80, y: 180, width: 250,height: 250))
                    .fill(Color(red:1/255,green:159/255,blue:233/255))
            Path(ellipseIn: CGRect(x: 80, y: 180, width: 250,height: 250))
            .stroke(Color.black, lineWidth: 2)
            Path(ellipseIn: CGRect(x: 95, y: 230, width: 220,height: 200))
                .fill(Color.white)
            Path(ellipseIn: CGRect(x: 95, y:230,width: 220,height: 200))
            .stroke(Color.black, lineWidth: 2)
            }
            //eye
            Group {
            //outside
            Path(ellipseIn: CGRect(x: 140, y: 205, width: 60,height: 80))
                .fill(Color.white)
            Path(ellipseIn: CGRect(x: 140, y: 205, width: 60,height: 80))
            .stroke(Color.black, lineWidth: 2)
            Path(ellipseIn: CGRect(x: 200, y: 205, width: 60,height: 80))
                .fill(Color.white)
            Path(ellipseIn: CGRect(x: 200, y: 205, width: 60,height: 80))
            .stroke(Color.black, lineWidth: 2)
            //inside
            Path(ellipseIn: CGRect(x: 170, y: 245, width: 20,height: 30))
                .fill(Color.black)
            Path(ellipseIn: CGRect(x: 210, y: 245, width: 20,height: 30))
            .fill(Color.black)
            Path(ellipseIn: CGRect(x: 175, y: 255, width: 10,height: 15))
            .fill(Color.white)
            Path(ellipseIn: CGRect(x: 215, y: 255, width: 10,height: 15))
                .fill(Color.white)
            }
            //nose
            Group {
                Path(ellipseIn: CGRect(x: 183, y: 270, width: 35,height: 35))
                    .fill(Color(red:250/255,green:0/255,blue:50/255))
                Path(ellipseIn: CGRect(x: 183, y: 270, width: 35,height: 35))
                .stroke(Color.black, lineWidth: 2)
                Path(ellipseIn: CGRect(x: 198, y: 275, width: 12,height: 12))
                    .fill(Color.white)
            }
            //mouth
            Group {
                //outside
                Path { (path) in
                path.move(to: CGPoint(x: 200, y: 305))
                path.addLine(to: CGPoint(x: 200, y: 330))
                }
                .stroke(Color.black, lineWidth: 2)
                Path { (path) in
                 path.move(to: CGPoint(x: 200, y: 330))
                 path.addArc(center: CGPoint(x: 200, y: 330), radius: 80,
                startAngle: .degrees(350), endAngle: .degrees(190), clockwise: false)
                 }
                .fill(Color(red:226/255,green:0/255,blue:42/255))
                Path { (path) in
                 path.move(to: CGPoint(x: 200, y: 330))
                 path.addArc(center: CGPoint(x: 200, y: 330), radius: 80,startAngle: .degrees(350), endAngle: .degrees(190), clockwise: false)
                    path.closeSubpath()
                 }
                .stroke(Color.black, lineWidth: 2)
                //inside
                Path { (path) in
                 path.move(to: CGPoint(x: 138, y: 380))
                 path.addQuadCurve(to: CGPoint(x: 200, y: 370), control:CGPoint(x: 120, y: 350))
                path.addQuadCurve(to: CGPoint(x: 262, y: 380), control:CGPoint(x: 280, y: 350))
                path.addQuadCurve(to: CGPoint(x: 200, y: 410), control:CGPoint(x: 246, y: 405))
                path.addQuadCurve(to: CGPoint(x: 138, y: 380), control:CGPoint(x: 154, y: 405))
                }
                .fill(Color(red:240/255,green:123/255,blue:28/255))
                Path { (path) in
                 path.move(to: CGPoint(x: 138, y: 380))
                 path.addQuadCurve(to: CGPoint(x: 200, y: 370), control:CGPoint(x: 120, y: 350))
                path.addQuadCurve(to: CGPoint(x: 262, y: 380), control:CGPoint(x: 280, y: 350))
                path.addQuadCurve(to: CGPoint(x: 200, y: 410), control:CGPoint(x: 246, y: 405))
                path.addQuadCurve(to: CGPoint(x: 138, y: 380), control:CGPoint(x: 154, y: 405))
                }
                .stroke(Color.black, lineWidth: 2)
            }
            //left mustache
            Group {
                Path { (path) in
                path.move(to: CGPoint(x: 90, y: 270))
                path.addLine(to: CGPoint(x: 150, y: 290))
                }
                .stroke(Color.black, lineWidth: 2)
                Path { (path) in
                path.move(to: CGPoint(x: 85, y: 300))
                path.addLine(to: CGPoint(x: 150, y: 300))
                }
                .stroke(Color.black, lineWidth: 2)
                Path { (path) in
                path.move(to: CGPoint(x: 90, y: 330))
                path.addLine(to: CGPoint(x: 150, y: 310))
                }
                .stroke(Color.black, lineWidth: 2)
            //right mustache
                Path { (path) in
                path.move(to: CGPoint(x: 310, y: 270))
                path.addLine(to: CGPoint(x: 250, y: 290))
                }
                .stroke(Color.black, lineWidth: 2)
                Path { (path) in
                path.move(to: CGPoint(x: 315, y: 300))
                path.addLine(to: CGPoint(x: 250, y: 300))
                }
                .stroke(Color.black, lineWidth: 2)
                Path { (path) in
                path.move(to: CGPoint(x: 310, y: 330))
                path.addLine(to: CGPoint(x: 250, y: 310))
                }
               .stroke(Color.black, lineWidth: 2)
            }
            //belt
            Group{
                Path { (path) in
                    path.move(to: CGPoint(x: 285, y: 400))
                    path.addQuadCurve(to: CGPoint(x: 125, y: 400), control:CGPoint(x: 205, y: 480))
                    path.addQuadCurve(to: CGPoint(x: 285, y: 400), control:CGPoint(x: 205, y: 450))
                }
                .fill(Color(red:220/255,green:15/255,blue:45/255))
                Path { (path) in
                    path.move(to: CGPoint(x: 285, y: 400))
                    path.addQuadCurve(to: CGPoint(x: 125, y: 400), control:CGPoint(x: 205, y: 480))
                    path.addQuadCurve(to: CGPoint(x: 285, y: 400), control:CGPoint(x: 205, y: 450))
                }
                .stroke(Color.black, lineWidth: 2)
                //bell
                Path(ellipseIn: CGRect(x: 180, y: 430, width: 45,height: 45))
                .fill(Color(red:238/255,green:238/255,blue:15/255))
                Path(ellipseIn: CGRect(x: 180, y: 430, width: 45,height: 45))
                .stroke(Color.black, lineWidth: 2)
                Path { (path) in
                path.move(to: CGPoint(x: 180, y: 450))
                path.addLine(to: CGPoint(x: 225, y: 450))
                }
                .stroke(Color.black, lineWidth: 2.5)
                Path(ellipseIn: CGRect(x: 195, y: 455, width: 15,height: 10))
                    .fill(Color.black)
                Path { (path) in
                path.move(to: CGPoint(x: 203, y: 460))
                path.addLine(to: CGPoint(x: 203, y: 475))
                }
                .stroke(Color.black, lineWidth: 3)
                //text
                Text("DORAEMON")
                .font(.system(size: 50, weight: .heavy, design: .rounded))
                .shadow(radius: 10)
                .blendMode(.overlay)
                .foregroundColor(Color(red: 102/255, green: 255/255, blue: 230/255, opacity: 1.0))
                .offset(x: 10, y: 200)
            }
        }
    }
}

struct Upoftakecopter: Shape {
                func path(in rect: CGRect) -> Path {
                    Path(ellipseIn: CGRect(x: rect.width-100,y:rect.width,width: 100,height: 30))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Upoftakecopter0: View {
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var rotationDegrees: Double = 0
    var body: some View {
        Upoftakecopter()
            .stroke(Color.black, lineWidth: 2)
            .rotationEffect(.degrees(rotationDegrees))
            .position(x: positionX, y: positionY)
    }
}

struct Upoftakecopter1: View {
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var rotationDegrees: Double = 0
    var body: some View {
        Upoftakecopter()
            .fill(Color.white)
            .rotationEffect(.degrees(rotationDegrees))
            .position(x: positionX, y: positionY)
    }
}


