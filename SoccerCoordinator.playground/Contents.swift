/* Part 1: */
// Player Information stored in Dictionary
let player1: [String:Any] = ["Name":"Joe Smith", "Height":42, "Experience":true, "Guardian Names":"Jim and Jan Smith"]
let player2: [String:Any] = ["Name":"Jill Tanner", "Height":36, "Experience":true, "Guardian Names":"Clara Tanner"]
let player3: [String:Any] = ["Name":"Bill Bon", "Height":43, "Experience":true, "Guardian Names":"Sara and Jenny Bon"]
let player4: [String:Any] = ["Name":"Eva Gordon", "Height":45, "Experience":false, "Guardian Names":"Wendy and Mike Gordon"]
let player5: [String:Any] = ["Name":"Matt Gill", "Height":40, "Experience":false, "Guardian Names":"Charles and Sylvia Gill"]
let player6: [String:Any] = ["Name":"Kimmy Stein", "Height":41, "Experience":false, "Guardian Names":"Bill and Hillary Stein"]
let player7: [String:Any] = ["Name":"Sammy Adams", "Height":45, "Experience":false, "Guardian Names":"Jeff Adams"]
let player8: [String:Any] = ["Name":"Karl Saygan", "Height":42, "Experience":true, "Guardian Names":"Heather Bledsoe"]
let player9: [String:Any] = ["Name":"Suzane Greenberg", "Height":44, "Experience":true, "Guardian Names":"Henrietta Dumas"]
let player10: [String:Any] = ["Name":"Sal Dali", "Height":41, "Experience":false, "Guardian Names":"Gala Dali"]
let player11: [String:Any] = ["Name":"Joe Kavalier", "Height":39, "Experience":false, "Guardian Names":"Sam and Elaine Kavalier"]
let player12: [String:Any] = ["Name":"Ben Finkelstein", "Height":44, "Experience":false, "Guardian Names":"Aaron and Jill Finkelstein"]
let player13: [String:Any] = ["Name":"Diego Soto", "Height":41, "Experience":true, "Guardian Names":"Robin and Sarika Soto"]
let player14: [String:Any] = ["Name":"Chloe Alaska", "Height":47, "Experience":false, "Guardian Names":"David and Jamie Alaska"]
let player15: [String:Any] = ["Name":"Arnold Willis", "Height":43, "Experience":false, "Guardian Names":"Claire Willis"]
let player16: [String:Any] = ["Name":"Phillip Helm", "Height":44, "Experience":true, "Guardian Names":"Thomas Helm and Eva Jones"]
let player17: [String:Any] = ["Name":"Les Clay", "Height":42, "Experience":true, "Guardian Names":"Wynonna Brown"]
let player18: [String:Any] = ["Name":"Herschel Krustofski", "Height":45, "Experience":true, "Guardian Names":"Hyman and Rachel Krustofski"]

// Information of All Players
let allPlayers: [[String:Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

var players: [String:Bool] = ["Joe Smith":true,"Jill Tanner":true,"Bill Bon":true,"Eva Gordon":false,"Matt Gill":false,"Kimmy Stein":false,"Sammy Adams":false,"Karl Saygan":true,"Suzane Greenberg":true,"Sal Dali":false,"Joe Kavalier":false,"Ben Finkelstein":false,"Diego Soto":true,"Chloe Alaska":false,"Arnold Willis":false,"Phillip Helm":true,"Les Clay":true,"Herschel Krustofski":true]

/* Part 2: */
var experiencedPlayers: [String] = []
for player in players {
    if let isExperienced = player["isExperienced"] as? Bool {
        //Do some stuff here'
        experiencedPlayers.append()
    } else {
        //Do some other stuff here
}

/* Part 3: */



