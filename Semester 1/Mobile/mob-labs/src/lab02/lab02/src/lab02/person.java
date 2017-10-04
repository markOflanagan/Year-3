package lab02;
// Please note that comment headers should be used
// in all classes.
// Ensure clear indentation used and java naming standards.
public class person
{
	// note attributes are private to support encapsulation
	public String name;
	public char gender;
	// constructor which initialises the instance variables
	
	public person(String name, char gender)
	{
		this.name = name;
		this.setGender(Character.toUpperCase(gender)); //convert the char to uppercase before assigning it
	}
	// override toString method to allow printing of Person details
	public String toString()
	{
		String str = "Person is ";
		str+=name+" who is ";
		
		if (getGender()=='M')
			
			str+="Male";
		
		else
			
			str+="Female";
		
		return str;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
}
