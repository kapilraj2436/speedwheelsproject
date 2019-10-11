package hw2.dao.data;

import java.util.HashMap;

import hw2.model.Connection;

public class ConnectionData {

	static HashMap data = new HashMap();
	Connection con = new Connection();
	static {
		data.put("Cruiser Bikes",
				"Cruiser motorcycles are grouped under different entities like the chopper and power cruiser bikes. These bikes are good for use on the street and over short distances since their riding posture would probably cause fatigue over long distances.##Hosted by: John##Location: 222,South Blvd, Charlotte, NC##Date: Wednesday, October 10th,2019##Time: 10:30am - 2:30pm");
	}

	public static String[] getConnectionData(String connectionName) {
		String conDetails = (String) data.get(connectionName);
		return conDetails.split("##");
	}

	
}

