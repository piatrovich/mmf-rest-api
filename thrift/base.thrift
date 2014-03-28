namespace java by.bsu.mmf

/**  Timestamp **/
typedef i64 timestamp

struct Teacher {
	string firstName
	string middleName
	string lastName
}

struct Discipline {
	string 
}

struct Interest {
	string sphere
}

enum PHD {
	DOCTOR
	CANDIDATE
	NONE
}

enum PublicationTypeEnum {
	BOOK
	MAGAZINE
	CONFERENCE
}

struct Publication {
	1: string name
	2: PublicationTypeEnum type
	3: string source
}

struct Article {
	1: string name
	2: string url
	3: float size
}

struct Contact {
	1: string telephone
	2: string email
	3: list<string> urls
	4: string address
}

struct PersonEntry {
	1: Teacher teacher
	2: PHD phd
	3: string position
	4: list<Interest> interests
	5: list<Discipline> disciplines
	6: list<Article> articles
	7: list<Publication> publications
	8: Contact contact
}

exception PersonNotFoundException {
	1: string message
}

exception UnderConstructionException {
  	1: string message
}

exception DenialOfServiceException {
  	1: string message
}

exception NotReadyException {
  	1: string message
}