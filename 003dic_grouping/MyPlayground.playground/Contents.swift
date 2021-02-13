
struct Person {
    let name: String
    let country: String
    
    init(name: String, country: String) {
        self.name = name
        self.country = country
    }
}

let taelee = Person(name: "taelee", country: "Korea")
let jehong = Person(name: "jehong", country: "Korea")
let yuma = Person(name: "Yuma", country: "Japan")

let personList: [Person] = [taelee, jehong, yuma]

let personDics = Dictionary(grouping: personList, by: {person in person.country})
print(personDics)
