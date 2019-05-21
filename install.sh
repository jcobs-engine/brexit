#!/bin/bash                                                                                                                                                                                   

code='                                                                                                                                                                                        
#!/bin/bash                                                                                                                                                                                   
sleep 0.5;                                                                                                                                                                                    
while [ 0 ]; do                                                                                                                                                                               
i=0;                                                                                                                                                                                          
while [ $i -le 4 ]; do                                                                                                                                                                        
echo -en "\015\033[KLoading                                         "                                                                                                                         
sleep 0.5;                                                                                                                                                                                    
echo -en "\015\033[KLoading .                                       "                                                                                                                         
sleep 0.5;                                                                                                                                                                                    
echo -en "\015\033[KLoading ..                                      "                                                                                                                         
sleep 0.5;                                                                                                                                                                                    
echo -en "\015\033[KLoading ...                                     "                                                                                                                         
sleep 0.5;                                                                                                                                                                                    
i=$(( $i + 1 ));                                                                                                                                                                              
done                                                                                                                                                                                          
db=$(( ( RANDOM % 5 )  + 12 ))                                                                                                                                                                
echo -en "\015\033[KVote                \033[1mParliament volume: {$db}db\033[0m   "                                                                                                          
sleep 1                                                                                                                                                                                       
echo -en "\015\033[KVote .              \033[1mParliament volume: {$db}db\033[0m   "                                                                                                          
sleep 1                                                                                                                                                                                       
echo -en "\015\033[KVote ..             \033[1mParliament volume: {$db}db\033[0m   "                                                                                                          
sleep 1                                                                                                                                                                                       
echo -en "\015\033[KVote ...            \033[1mParliament volume: {$db}db\033[0m   "                                                                                                          
sleep 1                                                                                                                                                                                       
echo -en "\015\033[KVote  \033[31m[refused]\033[0m                                 "                                                                                                          
sleep 4                                                                                                                                                                                       
                                                                                                                                                                                              
done                                                                                                                                                                                          
'

sudo echo -e "$code" > /bin/brexit
sudo chmod +x /bin/brexit
echo "Installation successful! Command: brexit"
