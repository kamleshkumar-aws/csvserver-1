step 1) # docker run -d  infracloudio/csvserver:latest
step 2) #docker run -d -v /csvserver/inputdata:/csvserver/inputdata infracloudio/csvserver:latest
step 3) #gencsv.sh
step 4) #docker run -d -v /csvserver/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
step 5) #docker exec -it 762b265d07e6 /bin/bash
        #netstat -tunlp 
step 6) #docker run -d -e CSVSERVER_BORDER=orange -p 9393:9300 -v /csvserver/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
