//
//  ContentView.swift
//  Coursesity
//
//  Created by Vignesh Shetty on 10/01/22.
// \u{20B9}

import SwiftUI

struct ContentView: View {
    
    var mockTest : [MockTest] = MockTestList.CourseList
    
    var body: some View {
        
        NavigationView{
            List(mockTest, id : \.id){ mt in
                NavigationLink(
                    destination: MockTestDetailView(mockTest: mt), label:{
                            Image(mt.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 125, height: 100, alignment: .center)
                                .padding(.horizontal, 7)
                            VStack(alignment: .leading, spacing: 10){
                                Text(mt.title)
                                    .fontWeight(.medium)
                                    .font(.headline)
                                Text("\(rupee) \(mt.sellPrice)")
                                    .fontWeight(.medium)
                                    .font(.subheadline)
                                    .foregroundColor(.green)
                            }
                    }
                )}.navigationTitle("Coursesity")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
