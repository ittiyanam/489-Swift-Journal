//
//  ContentView.swift
//  NavTest1
//
//  Created by Ittiyanam Tomichan on 3/18/24.
//

import SwiftUI

var courses:[Courses] =
[.init(name: "Math", color: Color("skyblue"), imageName: "divide.square"),
 .init(name: "Science", color: .green, imageName: "sun.haze"),
 .init(name: "History", color: .purple, imageName: "fossil.shell")]

var meetings:[Meetings] =
[.init(name: "Dinner", color: .purple, location: "McDonald's"),
 .init(name: "Midnight Snack", color: Color("skyblue"), location: "Whataburger"),
 .init(name: "Breakfast", color: .orange, location: "Mess")]

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                Section("My Courses"){
                    ForEach(courses, id:\.name) { //omgggg a for loop <333
                        course in
                        NavigationLink(value: course){
                            Label(course.name, systemImage: course.imageName)
                                .foregroundColor(course.color)
                        }
                    }//for
                }//section
                
                Section("My Meetings"){
                    ForEach(meetings, id:\.name) { //omgggg a for loop <333
                        meeting in
                        NavigationLink(value: meeting){
                            Text(meeting.name)
                                .foregroundColor(meeting.color)
                        }
                    }//for
                }//section

            }//list
            .navigationTitle("My Schedule")
            .navigationDestination(for: Courses.self){ course in
                ZStack{
                    course.color
                        .ignoresSafeArea()
                    Label(course.name, systemImage: course.imageName)
                        .font(.largeTitle)
                        .bold()
                }
            }//navDest
            
            .navigationDestination(for: Meetings.self){ meeting in
                ZStack{
                    meeting.color.ignoresSafeArea()
                    Text(meeting.location)
                        .font(.largeTitle)
                        .bold()
                }
            }//navDest
        }//navStack
    }//body
}//contentview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Courses:Hashable{
    let name:String
    let color:Color
    let imageName:String
    
}

struct Meetings:Hashable{
    let name:String
    let color:Color
    let location:String
//    let imageName:String

    
}

