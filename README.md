#GitHashingExcercise

A simple bash script using the sha256sum linux command to hash a 4 integer number using SHA-256 algorithm.
If no arguments are used, it takes the 4 last AEM digits of the creator as default.
If there is an argument upon call i.e: ./hash_script.sh "argument" it takes the 4 first characters and 
if they are integers they are hashed, if they are symbols or letters they are transformed to their ASCII number and from the final sequence it takes the first 4 digits.
The output of the hashing is stored to hash_output.txt
The file hash_output.txt contains the hashed 4 last AEM digits of the creator (or its call without arguments).
