package lab02;

import java.util.*;

public class control {
	
	public static void main(String[] args)
	{
		ArrayList<person> students = new ArrayList<person>();
		
		for(int i=1;i<20;i++)
		{
			person a = new person ("Mel",'F');
			students.add(i,a);
		}
		
		for(int a = 0; a < students.size();a++)
		{
			System.out.println(students.get(a));
		}
	}

}
