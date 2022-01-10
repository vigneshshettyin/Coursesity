//
//  MockTestDetailView.swift
//  Coursesity
//
//  Created by Vignesh Shetty on 10/01/22.
//

import SwiftUI

struct MockTestDetailView: View {
    var mockTest : MockTest
    var body: some View {
        VStack{
            Image(mockTest.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 210, alignment: .center)
                .cornerRadius(15.0)
            Text(mockTest.title)
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical, 4)
            HStack(spacing : 60){
                Text("\(rupee) \(mockTest.sellPrice)")
                    .foregroundColor(.green)
                    .bold()
                    .font(.title3)
                Text("\(rupee) \(mockTest.originalPrice)")
                    .strikethrough()
                    .font(.title3)
                    .padding(.vertical, 15)
            }
            HStack(spacing : 30){
                VStack{
                    Text("100")
                        .font(.title)
                        .bold()
                    Text("Marks")
                        .font(.title)
                }
                VStack{
                    Text("456")
                        .font(.title)
                        .bold()
                    Text("Minutes")
                        .font(.title)
                }
                VStack{
                    Text("230")
                        .font(.title)
                        .bold()
                    Text("Questions")
                        .font(.title)
                }
            }
            Text(mockTest.description)
                .padding()
            Spacer()
            Link(destination: mockTest.url, label: {
                Text("Enrol Now!")
                    .frame(width:320, height: 40)
                    .background(.blue)
                    .cornerRadius(20)
                    .foregroundColor(.white)
            })
        }
    }
}

struct MockTestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MockTestDetailView(mockTest: MockTestList.CourseList[1])
    }
}
