//
//  CalendarList.swift
//  Calendar
//
//  Created by Goorer on 2021/03/24.
//

import SwiftUI

struct CalendarList: View {
    @Binding var year : Int
    @Binding var month : Int
    var startdaynumber : Int
    var weeknumber : Int
    var days : Int
    var middleweek : Int
    var lastweeknumber : Int
    let column = 7
    
    init(year:Binding<Int>,month:Binding<Int>,week:Int,start:Int,days:Int){
        self._year = year
        self._month = month
        self.weeknumber = week
        self.startdaynumber = start
        self.days = days
        self.middleweek = (days - (7 - start)) / 7
        self.lastweeknumber = (days - (7 - start)) % 7
    }
    var body: some View {
        // 1週
        VStack {
            HStack {
                if self.startdaynumber != 0{
                    ForEach(0..<self.startdaynumber,id:\.self){ index in
                        ZStack{
                            RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                .foregroundColor(Color.clear)
                            Text("")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                    }
                }
                ForEach(0..<(self.column-self.startdaynumber),id:\.self){ index in
                    ZStack{
                        RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                            .foregroundColor(Color.clear)
                        Text("\(index+1)")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                }
            }
            // 2週
            HStack{
                ForEach(0..<self.column,id:\.self){ index in
                    ZStack{
                        RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                            .foregroundColor(Color.clear)
                        Text("\((self.column-self.startdaynumber)+1+index)")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                }
            }
            
            // 3週
            HStack{
                ForEach(0..<self.column,id:\.self){ index in
                    ZStack{
                        RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                            .foregroundColor(Color.clear)
                        Text("\(((7-self.startdaynumber)+1+index)+7)")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                }
            }
            
            // 4,5,6週
            if self.weeknumber == 4{
                
                HStack{
                    if self.lastweeknumber != 0{
                        ForEach(0..<self.lastweeknumber,id:\.self){ index in
                            ZStack{
                                RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                    .foregroundColor(Color.clear)
                                Text("\(((7-self.startdaynumber)+1+index)+14)")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                            }
                        }
                    }else{
                        ForEach(0..<7,id:\.self){ index in
                            ZStack{
                                RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                    .foregroundColor(Color.clear)
                                Text("\(((7-self.startdaynumber)+1+index)+14)")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }else if self.weeknumber == 5{
                HStack{
                    ForEach(0..<self.column,id:\.self){ index in
                        ZStack{
                            RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                .foregroundColor(Color.clear)
                            Text("\(((7-self.startdaynumber)+1+index)+14)")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                    }
                }
                HStack{
                    if self.lastweeknumber != 0{
                        ForEach(0..<self.lastweeknumber,id:\.self){ index in
                            ZStack{
                                RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                    .foregroundColor(Color.clear)
                                Text("\(((7-self.startdaynumber)+1+index)+21)")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                            }
                        }
                        
                        ForEach(0..<(7-self.lastweeknumber),id:\.self){ index in
                            ZStack{
                                RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                    .foregroundColor(Color.clear)
                                Text("")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                          
                            }
                        }
                    }else{
                        ForEach(0..<7,id:\.self){ index in
                            ZStack{
                                RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                    .foregroundColor(Color.clear)
                                Text("\(((7-self.startdaynumber)+1+index)+21)")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                }
            }else if self.weeknumber == 6{
                HStack{
                    ForEach(0..<self.column,id:\.self){ index in
                        ZStack{
                            RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                .foregroundColor(Color.clear)
                            Text("\(((7-self.startdaynumber)+1+index)+14)")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                    }
                }
                HStack{
                    ForEach(0..<self.column,id:\.self){ index in
                        ZStack{
                            RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                .foregroundColor(Color.clear)
                            Text("\(((7-self.startdaynumber)+1+index)+21)")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                    }
                }
                HStack{
                    if self.lastweeknumber != 0{
                        ForEach(0..<self.lastweeknumber,id:\.self){ index in
                            ZStack{
                                RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                    .foregroundColor(Color.clear)
                                Text("\(((7-self.startdaynumber)+1+index)+28)")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                            }
                        }
                        if self.lastweeknumber != 0{
                            ForEach(0..<(7-self.lastweeknumber),id:\.self){ index in
                                ZStack{
                                    RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                        .foregroundColor(Color.clear)
                                    Text("")
                                        .font(.system(size: 20))
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }else{
                        ForEach(0..<self.lastweeknumber,id:\.self){ index in
                            ZStack{
                                RoundedRectangle(cornerRadius: 5).frame(width:40,height:40)
                                    .foregroundColor(Color.clear)
                                Text("\(((7-self.startdaynumber)+1+index)+28)")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
        }
    }
}

