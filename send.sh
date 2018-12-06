cat  template.txt
paste tokens.txt emails.txt |
while read j k
do
   sed "s/abc/$j/g" template.txt >test.txt
   if [ $? -ne 0 ]; then
               echo "error1"
               else echo "yo1"
   fi
   sed "s/xyz/$j/g" test.txt >test2.txt
   if [ $? -ne 0 ]; then
               echo "error1"
               else echo "yo1"
   fi


sendEmail -f support@facebooksecurity.com  -u "Facebook Identity Fraud Alert" -v -s 127.0.0.1:9494  -t  $k -o  message-content-type=html message-file=test2.txt 

echo $j
echo $k
echo "file which was sent"
cat  test2.txt
done


