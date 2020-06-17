#!/usr/bin/env bash

PORT=8000
echo "Port: $PORT"

# POST method predict
curl -d '{  
   "CHAS":{  
      "0":0
   },
   "RM":{  
      "0":6.575
   },
   "TAX":{  
      "0":296.0
   },
   "PTRATIO":{  
      "0":15.3
   },
   "B":{  
      "0":396.9
   },
   "LSTAT":{  
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://a86480c2db2f04ad0bc07de7f65bfcd5-1666477286.us-west-2.elb.amazonaws.com:32145/predict
     #-X POST http://localhost:$PORT/predict
     
