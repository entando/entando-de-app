SERVERS=(eap wildfly jetty-container)
DBMSS=(postgresql mysql derby)
for SERVER in "${SERVERS[@]}"
do
   for DBMS in "${DBMSS[@]}"
   do
     echo "Running smoke test using ${SERVER} ${DBMS}" 
     ./run-smoke-tests.sh ${SERVER} ${DBMS} &> "${SERVER}_${DBMS}.log"
     if [ "$?" = "0" ]; then
         echo "Successess!" 
         #rm "${SERVER}_${DBMS}.log"
     else
        echo "Failed!"
     fi
   done
done

