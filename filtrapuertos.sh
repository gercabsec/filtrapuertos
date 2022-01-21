filtrapuertos () {
        puertos="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')" 
        direccion_ip="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)" 
        echo -e "\n[*] Extrayendo puertos...\n" > filtrapuertos.tmp
        echo -e "\t[*] Dirección IP: $ip_address" >> filtrapuertos.tmp
        echo -e "\t[*] Puertos abiertos: $ports\n" >> filtrapuertos.tmp
        echo $ports | tr -d '\n' | xclip -sel clip
        echo -e "[*] Puertos copiados al portapapeles\n" >> filtrapuertos.tmp
        cat filtrapuertos.tmp
        rm filtrapuertos.tmp
}
