my_variable2="0403" #default value
if [ $# -gt 0 ]; then
# Take the first 4 characters of the argument
    input_argument="${1:0:4}"

    # Check if the first 4 characters are integers
    if [[ $input_argument =~ ^[0-9]+$ ]]; then
        my_variable="$input_argument"
    else
    	my_variable=""
        # Convert non-integer characters to their ASCII values
        for ((i = 0; i < ${#input_argument}; i++)); do
            char="${input_argument:$i:1}"
            ascii_value=$(printf '%d' "'$char'")
            my_variable="${my_variable}${ascii_value}"
        done
    fi
    my_variable2="${my_variable:0:4}" #from the ASCII sequence take the first 4 integers
fi
echo "Hashes the argument upon call, if no argument provided uses the 4 last digits of AEM"
echo "$my_variable2"
echo -n "$my_variable2" | sha256sum > hash_output.txt
echo "Hashing done"
