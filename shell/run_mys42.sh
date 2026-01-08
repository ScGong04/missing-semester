 #!/usr/bin/env bash
error_msg=""
counter=1
while [[ -z "$error_msg" ]]
do
    error_msg=$(./mysterious42.sh 2>&1 1>/dev/null)
    counter=$(( counter+1 ))
done

echo "it took $counter run(s)"
