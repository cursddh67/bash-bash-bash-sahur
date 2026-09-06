#!/bin/bash
# oh by the way, it needs 777 permissions or idk

search() {
    local pn="$1"
    local res

    res=$(ps aux | grep "[${pn:0:1}]${pn:1}")

    if [ -n "$res" ]; then
        echo "found matches:"
        echo "$res"
    else
        echo "not found, rip"
    fi
}

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
            search "$pn"
            
            echo "1. kill it"
            echo "2. just press enter to get back in menu"

            read -rp "> " rpt

            case "$rpt" in
                1)
                    read -rp "please insert PID: " pid
                    kill -9 "$pid"
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
