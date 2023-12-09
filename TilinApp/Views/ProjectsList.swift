//
//  ProjectsList.swift
//  TilinApp
//
//  Created by gdaalumno on 08/12/23.
//

import SwiftUI



struct ProjectsList: View {
    @State private var searching = ""
    let projects: [Project]
    var fileteredProjects:[Project]{
        if searching.isEmpty{
            return projects
        }
        else{
            return projects.filter { project in//iterador anonimo, su nombre es $0
                project.title.clean().contains(searching.clean())
            }
        }
    }
    var body: some View {
        NavigationView{
            List(fileteredProjects) { project in
                NavigationLink(destination: ProjectDetailView(project: project)) {
                    VStack(alignment: .leading){
                        HStack {
                            Text(project.title)
                                .font(.title3)
                            .bold()
                            Spacer()
                            Text(project.rating, format: .number)
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                        Text(project.description)
                            .lineLimit(2)
                    }
                }
            }
            .navigationTitle("Projects")
            .searchable(text: $searching)//binding
        }
    }
}

struct ProjectsList_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsList(projects: Person.myProfile.projects)
    }
}
