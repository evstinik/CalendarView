import SwiftUI

struct Week: Identifiable {
    let id = UUID()
    let days: [Day]
}

struct WeekView: View {
    let week: Week

    var body: some View {
        HStack {
            ForEach(week.days, id: \.number) {
                DayView(day: $0)
                    .frame(maxWidth: .infinity)
            }
        }
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView(
            week: Week(days: [
                Day(number: 21, isEnabled: false),
                Day(number: 22, isHeighlighted: true),
                Day(number: 23),
                Day(number: 24, isSelected: true),
                Day(number: 25, isHeighlighted: true),
                Day(number: 26),
                Day(number: 27),
            ])
        ).previewLayout(.sizeThatFits)
    }
}
