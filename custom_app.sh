
apkBaseName=$1
tempSmaliDir=$2

if [ $1 = "TeleService" ];then
	echo ">>> in custom_jar $apkBaseName"
	cat TeleService/smali/com/android/phone/PhoneInterfaceManager.smali.part >> $tempSmaliDir/smali/com/android/phone/PhoneInterfaceManager.smali
fi
