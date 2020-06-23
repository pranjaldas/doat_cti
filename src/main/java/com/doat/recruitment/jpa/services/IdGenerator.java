package com.doat.recruitment.jpa.services;

import java.util.Random;

public class IdGenerator {
	//Id generator method
	 public static String generate( String str1,String str2,String str3,String str4, String str5) {
		 	str1.replaceAll("\\s", "");
		 	str2.replaceAll("\\s", "");
		 	str3.replaceAll("\\s", "");
		 	str4.replaceAll("\\s", "");
		 	str5.replaceAll("\\s", "");
		 	
	        int size = 20;
	        StringBuilder id = new StringBuilder(size);

	        for (int i = 0; i <= 3; i++) {
	            id.append(str1.charAt(i));

	        }
	        for (int n = 0; n <= 3; n++) {
	            id.append(str2.charAt(n));

	        }
	        for (int j = 0; j <= 2; j++) {
	            id.append(str3.charAt(j));
	        }
	        for (int l = 0; l <= 3; l++) {
	            id.append(str4.charAt(l));
	        }
	        for (int k = 0; k <= 2; k++) {
	            id.append(str5.charAt(k));
	        }

	        return id.toString().toUpperCase().replaceAll("\\s", "");
		}
		public static String generateV2(String str1,String str2){
			String mainstring=str1.toUpperCase().replaceAll("\\s","")+str2.toUpperCase().replaceAll("\\s","");
			Random random = new Random();
			StringBuilder id=new StringBuilder();
			for (int i = 0; i < 16; i++) {
				id.append(mainstring.charAt(random.nextInt(mainstring.length())));
			}

			return id.toString();

		}

}