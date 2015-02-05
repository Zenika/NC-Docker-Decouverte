#!/bin/bash

# Chercher le pid des process nodejs des 50 
# conteneurs démarrés auparavant en utilsant 
# la commande ps
ps -ef | grep "node /src/index.js" | awk '{print $2}' | wc -l
# Essayer de killer les process
ps -ef | grep "node /src/index.js" | awk '{print $2}' | xargs sudo kill
