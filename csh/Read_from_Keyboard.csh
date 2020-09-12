

echo "Waiting for Your to Key in : Y/N"
set key = $<

if ( $key == "Y" | $key == "y" ) then
    echo " Considered  Yes (Y)"
    printf " Whats Yopu Name : "
    set name = $<
    printf "Whom do you work for : "
    set office = $<
    printf "Are you a fool $name.\n Do not you have any work at your $office\n"
else
    echo " Exiting As keyed Non Y (N)"
endif
    
