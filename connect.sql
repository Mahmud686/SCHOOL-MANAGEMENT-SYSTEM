		   drop database link site1;
			create database link site1
 			connect to system identified by "12345"
			using '(DESCRIPTION =
       				   (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP) (HOST = 192.168.43.141) (PORT = 1521)))
      				   (CONNECT_DATA = (SID = XE))
    			       )' ; 
					   
					   