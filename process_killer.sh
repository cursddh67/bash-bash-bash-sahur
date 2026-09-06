#!/bin/bash
# oh by the way, it needs 777 permissions or idk
# also, ngl, this is completely useless since you can do it in like 2 lines (ps aux | grep "thing" it gives you his pid and then kaboom kill -9 id)

while true; do
    clear
    echo "welcome!!!1!1!!!"
    echo "1 search for a process"
    echo "2 getout"
    read -rp "> " ans
    case "$ans" in
        1) 
            clear
            read -rp "process name: " pn
            res=$(pgrep -o "$pn")
            echo "$res"
            
            echo "1. kill it"
            echo "2. just press enter to get back in menu"

            read -rp "> " rpt

            case "$rpt" in
                1)
                    kill -9 "$res"
                
                    echo "done"
                    read -rp "press enter to continue " inp2
                    ;;
                2)
                    echo "okay"
                    ;;
                esac

            ;;
        2)  
            clear
            echo "alr.."
            exit 0
            ;;
        *)
            clear
            echo "uh"
            ;;
    esac
done
