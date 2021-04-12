//
//  CalendarView.swift
//  Calendar
//
//  Created by Goorer on 2021/03/23.
//

import SwiftUI


struct CalendarView: View {
    @State var year : Int = AppDelegate().year
    @State var month : Int = AppDelegate().month
    let dayofweek = ["日","月","火","水","木","金","土"]
    var body: some View {
        ZStack{
            VStack {
                Text("\(self.month) \(String(self.year))")
                    .font(.system(size: 20))
                Spacer().frame(height:50)
                
                HStack {
                    ForEach(0..<self.dayofweek.count){ index in
                        ZStack {
                            RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                .foregroundColor(Color.clear)
                            Text(dayofweek[index])
                                .font(.system(size:10))
                        }
                    }
                }
                Spacer()
                HStack {
                    Button(action: {
                        self.LastMonth()
                    }, label: {
                        Text("Back")
                    })
                    Button(action: {
                        self.NextMonth()
                    }, label: {
                        Text("Next")
                    })
                }
            }
            VStack {
                Spacer().frame(height:115)
                CalendarList(year: $year, month: $month, week: CalendarModel().GetWeekNumber(year: self.year, month: self.month), start: CalendarModel().DayofWeekCalc(year: self.year, month: self.month, day: 1), days: CalendarModel().DayNumber(year: self.year, month: self.month))
                Spacer()
            }
        }
    }
    func NextMonth(){
        if self.month != 12{
            self.month += 1
        }else if self.month == 12{
            self.year += 1
            self.month = 1
        }
    }
        
    func LastMonth(){
        if self.month != 1{
            self.month -= 1
        }else if self.month == 1{
            self.year -= 1
            self.month = 12
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
