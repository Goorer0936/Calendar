//
//  CalendarRow.swift
//  Calendar
//
//  Created by Goorer on 2021/03/24.
//

import SwiftUI
struct CalendarRow: View {
    var day : String
    init(day:String){
        self.day = day
    }
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5).frame(width:50,height:50)
                .foregroundColor(Color.yellow)
            Text(self.day)
                .font(.system(size: 20))
                .foregroundColor(.black)
        }
    }
}

