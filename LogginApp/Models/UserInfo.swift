//
//  UserInfo.swift
//  LogginApp
//
//  Created by Dannek on 22.02.2022.
//



struct User {
    let login: String
    let password: String
    let person: PersonInfo
    
    static func getUserInfo() -> User {
        User(
            login: "User",
            password: "Password",
            person: PersonInfo.getPerson()
        )
    }
}

struct PersonInfo {
    let name: String
    let surname: String
    let image: String
    let age: Int
    let userName: String
    let aboutInfo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> PersonInfo {
        PersonInfo(name: "Meleshko", surname: "Daniil", image: "Avatar", age: 24, userName: "User", aboutInfo: "Моя мечта стать программистом, но я не просто так мечтаю им стать, я мечтаю им стать для того чтобы исполнить мои маленькие мечты по типо того купать то съездить туда то. Когда я решил стать программистом я сразу знал кем конкретно хочу быть. В ИТ сфере меня всегда интересовала мобильная разработка. А почему ios, а не андройд? Летом я купил себе первый айфон и был приятно удивлен работой системы и оптимизацией приложений на ней по этому, я и решил начать свой путь мобильного разработчика с ios.")
    }
}

   

