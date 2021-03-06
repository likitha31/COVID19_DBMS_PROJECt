package SQL_Support;

import java.util.HashSet;

import Tables.Contact_Details;
import Tables.Doctor;
import Tables.Foreign_Visit_Info;
import Tables.Govt_Quarantine_Buffer;
import Tables.Govt_Quarantined;
import Tables.Home_Quarantined;
import Tables.Hospital;
import Tables.Parent_Table;
import Tables.Patient;
import Tables.Patient_Buffer;
import Tables.Person;
import Tables.Team_Hospital;
import Tables.Teams;
import Tables.Users;

/*
 * SQL Commands uses this interface 
 * to check the validity of features
 * for given a Table
 */
public class Table_Features {
	public String[] Features(String Table_Name) {
		Parent_Table parent_table = null;
		if (Table_Name.equalsIgnoreCase("person")) {
			parent_table = new Person();
//		} else if (Table_Name.equalsIgnoreCase("Contact_Details")) {
//			parent_table = new Contact_Details();
		} else if (Table_Name.equalsIgnoreCase("Foreign_Visit_Info")) {
			parent_table = new Foreign_Visit_Info();
		} else if (Table_Name.equalsIgnoreCase("Hospital")) {
			parent_table = new Hospital();
		}else if (Table_Name.equalsIgnoreCase("Patient")) {
			parent_table = new Patient();
		}else if (Table_Name.equalsIgnoreCase("Teams")) {
			parent_table = new Teams();
		}else if (Table_Name.equalsIgnoreCase("Users")) {
			parent_table = new Users();
		}else if (Table_Name.equalsIgnoreCase("Team_Hospital")) {
			parent_table = new Team_Hospital();
		}else if (Table_Name.equalsIgnoreCase("Home_Quarantined")) {
			parent_table = new Home_Quarantined();
		}else if (Table_Name.equalsIgnoreCase("Govt_Quarantined")) {
			parent_table = new Govt_Quarantined();
		}else if (Table_Name.equalsIgnoreCase("Govt_Quarantine_Buffer")) {
			parent_table = new Govt_Quarantine_Buffer();
		}else if (Table_Name.equalsIgnoreCase("Patient_Buffer")) {
			parent_table = new Patient_Buffer();
		}else if (Table_Name.equalsIgnoreCase("Doctor")) {
			parent_table = new Doctor();
		}
		return parent_table.get_features();
	}

	public HashSet<String> Primary_Key(String Table_Name) {
		Parent_Table parent_table = null;
		if (Table_Name.equalsIgnoreCase("person")) {
			parent_table = new Person();
//		} else if (Table_Name.equalsIgnoreCase("Contact_Details")) {
//			parent_table = new Contact_Details();
		} else if (Table_Name.equalsIgnoreCase("Foreign_Visit_Info")) {
			parent_table = new Foreign_Visit_Info();
		} else if (Table_Name.equalsIgnoreCase("Hospital")) {
			parent_table = new Hospital();
		}else if (Table_Name.equalsIgnoreCase("Patient")) {
			parent_table = new Patient();
		}else if (Table_Name.equalsIgnoreCase("Teams")) {
			parent_table = new Teams();
		}else if (Table_Name.equalsIgnoreCase("Users")) {
			parent_table = new Users();
		}else if (Table_Name.equalsIgnoreCase("Team_Hospital")) {
			parent_table = new Team_Hospital();
		}else if (Table_Name.equalsIgnoreCase("Home_Quarantined")) {
			parent_table = new Home_Quarantined();

		}else if (Table_Name.equalsIgnoreCase("Govt_Quarantined")) {
			parent_table = new Govt_Quarantined();
		}else if (Table_Name.equalsIgnoreCase("Doctor")) {
			parent_table = new Doctor();
		}else if (Table_Name.equalsIgnoreCase("Govt_Quarantine_Buffer")) {
			parent_table = new Govt_Quarantine_Buffer();
		}else if (Table_Name.equalsIgnoreCase("Patient_Buffer")) {
			parent_table = new Patient_Buffer();
		}
		return parent_table.get_primary_key();
	}
}
