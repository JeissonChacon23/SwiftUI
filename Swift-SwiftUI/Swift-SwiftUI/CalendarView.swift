//
//  CalendarView.swift
//  Swift-SwiftUI
//
//  Created by Jeisson Chacón on 19/05/24.
//

import SwiftUI

struct CalendarView: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        Text("Select date:")
            .font(.title3)
            .bold()
        DatePicker("Select date", selection: $selectedDate, displayedComponents: .date)
            .datePickerStyle(GraphicalDatePickerStyle())
            .padding()
        Text("Date selected \(formatterDate(date: selectedDate))")
            .font(.headline)
            .padding()
    }
    
    
    func formatterDate(date: Date) -> String{
        let dateFromatter = DateFormatter()
        dateFromatter.dateFormat = "EEEE, d MM YYYY"
        return dateFromatter.string(from: date)
    }
}

#Preview {
    CalendarView()
}
