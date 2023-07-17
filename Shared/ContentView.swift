//
//  ContentView.swift
//  Shared
//
//  Created by Komang Krisnanda on 17/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0){
            Header()
            Stories()
            Divider()
            PostHeader()
            PostContent()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack{
            Image("Logo")
            Spacer()
            HStack(spacing: 20.0){
                Image("Add")
                Image("Love")
                Image("Messenger")
            }
            
            
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    
    var name: String = "Komang"
    var img: String = "Avatar1"
    
    var body: some View {
        VStack {
            VStack{
                Image(img)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 15.0){
                Story(name: "Krisnanda", img: "Avatar1")
                Story(name: "Hanabi", img: "Avatar2")
                Story(name: "Martis", img: "Avatar3")
                Story(name: "Selena", img: "Avatar4")
                Story(name: "Miya", img: "Avatar5")
                Story(name: "Dyrroth", img: "Avatar6")
                Story(name: "Krisnanda", img: "Avatar4")
                Story(name: "Hanabi", img: "Avatar2")
            }.padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack{
                Image("Avatar1")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("komangkrisnanda")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Image("More")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostContent: View {
    var body: some View {
        VStack {
            Image("Avatar1")
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            HStack{
                HStack(spacing: 10.0){
                    Image("LoveActive")
                    Image("DirectMessage")
                }
                Spacer()
                Image("Bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}
