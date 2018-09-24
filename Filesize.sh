read -p "Enter a file path: " filepath
#eval $filepath 
touch $filepath
if [ $? -eq 0 ]; then
FILESIZE=$(stat -c%s "$filepath")
echo "Size of $filepath = $FILESIZE bytes."
else
echo "could not find the file"
fi
