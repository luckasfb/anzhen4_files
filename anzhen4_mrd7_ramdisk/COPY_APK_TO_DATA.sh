if [ -d /system/app/dataapp ]; then
cd /system/app/dataapp/
for file in `ls`
do
        if [ !  -f /data/app/Already ]; then        
                cp $file /data/app/
                chmod 777 /data/app/$file
        fi
done
cd /data/app/
echo Apk has already installed in data/app/ at first boot up > Already
fi

