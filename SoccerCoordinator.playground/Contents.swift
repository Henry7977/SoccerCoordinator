/* Soccer Coordinator */
/* Note that most of these comments were made in order to give me a confirmation of the constant/variable types */

/* Part 1: */
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
let players: [[String:Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18] // players is an array with dictionaries

// Experience Levels of All Players
let experienceLevels: [String:Bool] = ["Joe Smith":true,"Jill Tanner":true,"Bill Bon":true,"Eva Gordon":false,"Matt Gill":false,"Kimmy Stein":false,"Sammy Adams":false,"Karl Saygan":true,"Suzane Greenberg":true,"Sal Dali":false,"Joe Kavalier":false,"Ben Finkelstein":false,"Diego Soto":true,"Chloe Alaska":false,"Arnold Willis":false,"Phillip Helm":true,"Les Clay":true,"Herschel Krustofski":true]

/* Part 2: */
// Variable Declaration
var experiencedPlayers = [[String:Any]]() // experiencedPlayers is an array with dictionaries
var nonExperiencedPlayers: [[String:Any]] = [] //nonExperiencedPlayers is an array with dictionaries
var teamDragons: [[String:Any]] = [] // teamDragons is an array with dictionaries
let teamDragonsPracticeTime = "March 17 at 1pm"
var teamSharks: [[String:Any]] = [] // teamSharks is an array with dictionaries
let teamSharksPracticeTime = "March 17 at 3pm"
var teamRaptors: [[String:Any]] = [] // teamRaptors is an array with dictionaries
let teamRaptorsPracticeTime = "March 18 at 1pm"


for player in players {
    if player["Experience"] as? Bool == true { // Player is a dictionary constant from players array
        experiencedPlayers.append(player) // the player dictionary is being appended to experiencedPlayers which is a array with dictionaries
    } else {
        nonExperiencedPlayers.append(player) // the player dictionary is being appended to the nonExperiencedPlayers which is an array with dictionaries
    }
}

// Constant theKey is the name of the player and constant theValue is either true or false
// For loop assigns the players to either an experienced group or a non-experienced group
/* for (theKey,theValue) in experienceLevels {
    if theValue == true {
        experiencedPlayers.append(theKey) // Appends the person's name to a list (array) of experienced players
    } else {
        nonExperiencedPlayers.append(theKey) // Appends the person's name to a list (array) of non-experienced players
    }
} */
// Prints out experiencedPlayers and nonExperiencedPlayers
// print(experiencedPlayers)
// print(nonExperiencedPlayers)


// Function sortToTeam allows computer to do its best in assigning the players to equal teams
func sortToTeam(forGroup group: [[String:Any]]) {
    for player in group { // group is either experiencedPlayers or nonExperiencedPlayers
        if teamSharks.count <= teamDragons.count && teamSharks.count <= teamRaptors.count {
            teamSharks.append(player)
        } else if teamDragons.count <= teamRaptors.count && teamDragons.count <= teamSharks.count {
            teamDragons.append(player)
        } else if teamRaptors.count <= teamSharks.count && teamRaptors.count <= teamDragons.count {
            teamRaptors.append(player)
        }
    }

}

sortToTeam(forGroup: experiencedPlayers)
sortToTeam(forGroup: nonExperiencedPlayers)

/*******************************************************************\
 Trying the Exceeds Expectations Section but did not gain any success
 \*******************************************************************/
/*
 // Declaring Average Variables
 
 var teamSharksAverage = 0
 var teamDragonsAverage = 0
 var teamRaptorsAverage = 0
 for player in teamSharks {
 teamSharksAverage = teamSharksAverage + (player["Height"] as! Int)
 }
 for player in teamDragons {
 teamDragonsAverage = teamDragonsAverage + (player["Height"] as! Int)
 }
 for player in teamRaptors {
 teamRaptorsAverage = teamRaptorsAverage + (player["Height"] as! Int)
 
 }
 teamSharksAverage = teamSharksAverage / teamSharks.count
 teamRaptorsAverage = teamRaptorsAverage / teamRaptors.count
 teamDragonsAverage = teamDragonsAverage / teamDragons.count
 // Logic
 while teamSharksAverage - teamRaptorsAverage >= 15 || teamRaptorsAverage - teamSharksAverage >= 15 && teamSharksAverage - teamDragonsAverage >= 15 || teamSharksAverage - teamDragonsAverage - teamSharksAverage >= 15 && teamRaptorsAverage - teamDragonsAverage >= 15 || teamDragonsAverage - teamRaptorsAverage >= 15 {
 if teamSharksAverage - teamRaptorsAverage >= 15 || teamRaptorsAverage - teamSharksAverage >= 15 {
 
 }
 }
 */


/* Part 3: */
// Creating Arrays that store Letters
var teamSharksLetters: [String] = []
var teamRaptorsLetters: [String] = []
var teamDragonsLetters: [String] = []
var letters: [String] = []

/*----------------------------------------------
 Func letterCreator creates letters based on team
 ----------------------------------------------*/
func letterCreator(forTeam: [[String:Any]], teamName: String) -> Void {
    // Empty Variable letter used to allow letters created to be assigned
    var letter: String = ""
    for player in forTeam {

        var practiceTime: String = ""
        // Logic Determines Practice Time depending on team
        if teamName == "sharks" {
            practiceTime = teamSharksPracticeTime
        } else if teamName == "raptors" {
            practiceTime = teamRaptorsPracticeTime
        } else if teamName == "dragons" {
            practiceTime = teamDragonsPracticeTime
        } 
        
        // Variable playerName is player's name casted from any to String
        let playerName = player["Name"] as! String
        // Variable guardianNames is player's guardian names casted from any to String
        let guardianNames = player["Guardian Names"] as! String
        
        // Assigns basic letter structure with edits depending on player to letters variable
        letter = "Dear \(guardianNames), \nI would like to congratulate your child \(playerName) for making it to team \(teamName)! We at Vancouver Soccer Academy appreciate the time and effort your family exerted to apply for a spot on the team. Be sure to not miss the first practice on \(practiceTime) and see you on the field! \nSincerely, Coach T.\n"
        
        // Decided to assign letters to specific teams array as well (why not?)
        if teamName == "sharks" {
            teamSharksLetters.append(letter)
        } else if teamName == "raptors" {
            teamRaptorsLetters.append(letter)
        } else if teamName == "dragons" {
            teamDragonsLetters.append(letter)
        }
        
        // Letter then appended to letters variable that stores all letters
        letters.append(letter)
        
        /* Code that was too long and was fixed using the one above */ /*
         if teamName == "Sharks" {
         letter = " \nDear \(guardianNames), \nI would like to congratulate your child \(playerName) for making it to team \(teamName)! We at Vancouver Soccer Academy appreciate the time and effort your family exerted to apply for a spot on the team. Be sure to not miss the first practice on \(teamSharksPracticeTime) and see you on the field! \nSincerely, Coach T."
         allLetters.append(letter)
         teamSharksLetters.append(letter)
         
         } else if teamName == "Raptors" {
         letter = "\nDear \(guardianNames), \nI would like to congratulate your child \(playerName) for making it to team \(teamName)! We at Vancouver Soccer Academy appreciate the time your family took to apply for a spot on the team. Be sure to not miss the first practice on \(teamRaptorsPracticeTime) and see you on the field! \nSincerely, Coach T."
         allLetters.append(letter)
         teamRaptorsLetters.append(letter)
         } else if teamName == "Dragons" {
         letter = "\nDear \(guardianNames), \nI would like to congratulate your child \(playerName) for making it to team \(teamName)! We at Vancouver Soccer Academy appreciate the time your family took to apply for a spot on the team. Be sure to not miss the first practice on \(teamDragonsPracticeTime) and see you on the field! \nSincerely, Coach T."
         allLetters.append(letter)
         teamDragonsLetters.append(letter)
         }
         */
    }
    
}

letterCreator(forTeam: teamSharks, teamName: "sharks")
letterCreator(forTeam: teamDragons, teamName: "dragons")
letterCreator(forTeam: teamRaptors, teamName: "raptors")

for letter in letters {
    print(letter)
}








