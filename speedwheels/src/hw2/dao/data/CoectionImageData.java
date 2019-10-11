package hw2.dao.data;

import java.util.HashMap;

import hw2.model.Connection;

public class CoectionImageData {

	
	static HashMap imageData = new HashMap();
	static {
		imageData.put("Cruiser Bikes","./images/cruiserbikes.jpeg");
	}

	public static String getConnectioImagenData(String connectionName) {
		String conDetails = (String) imageData.get(connectionName);
		return conDetails;
	}
}
