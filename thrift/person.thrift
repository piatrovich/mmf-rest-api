namespace java by.bsu

/**  Timestamp **/
typedef i64 timestamp

include "base.thrift"

service PersonService {

	base.PersonEntry getPerson(
		1: i16 id)
		throws(1: base.PersonNotFoundException, 2: base.DenialOfServiceException)

	base.PersonEntry getPerson(
		1: string fullName)
		throws(1: base.PersonNotFoundException, 2: base.DenialOfServiceException)

	list<base.PersonEntry> getPersons(
		1: string faculty)
		throws(1: base.DenialOfServiceException)

	list<base.PersonEntry> getPersons(
		1: string department)
		throws(1: base.DenialOfServiceException)

	/** pagination **/
	list<base.PersonEntry> nextPersonGroup(
		1: string request
		/** number of current page **/
		2: i32 page) 
	throws (1: base:DenialOfServiceException)

	list<base.PersonEntry> previousPersonGroup(
		1: string request
		/** number of current page **/
		2: i32 page) 
	throws (1: base:DenialOfServiceException)

}