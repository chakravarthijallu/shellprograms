#!/bin/bash
function checkAndInstallApache2() {
    dpkg -s apache2 >> /dev/null
    local STATUS_SERVER_FOUND=$?
    if [ $STATUS_SERVER_FOUND -ne 0 ]
    then
        sudo apt update -y 
        sudo apt install -y apache2
        local STATUS_APACHE2_INSTALLED=$?
        if [ $STATUS_APACHE2_INSTALLED -ne 0 ]
        then
            echo "error: Please Install Apache2 Server correctly"
            exit 200
        fi
    else
        local STATUS_APACHE2_ACTIVE=$(sudo systemctl status apache2 | grep -i "Active:" | awk '{print $2}')
        if [ $STATUS_APACHE2_ACTIVE == "inactive" ]
        then
            echo "error: Please Start Server "
            exit 300
        fi
    fi
}

function checkAndPlaceSiteDir() {
    if [ ! -e $ZIP_LOC ]
    then
        echo "error: Zip location is not found"
        exit 400
    fi
    if [ -d /var/www/$SITE_DIR ]
    then
        today_date=$(date +%d%m%y%H%S)
        sudo mv /var/www/$SITE_DIR /var/www/${SITE_DIR}_${today_date}
    fi
    sudo cp $ZIP_LOC /var/www/
    sudo tar -xzvf  /var/www/$SITE_DIR.tar.gz -C /var/www/
    sudo rm -f /var/www/$SITE_DIR.tar.gz
    
}

function checkAndConfigApache2() {
    if [ ! -e /etc/apache2/sites-available/$SITE_DIR.conf ]
    then
        sudo cp site_directory.conf.tmpl /etc/apache2/sites-available/${SITE_DIR}.conf
        sudo sed -i "s/:DOMAINNAME:/$DOMAIN_NM/g" /etc/apache2/sites-available/$SITE_DIR.conf
        sudo sed -i "s/:SERVERNAME:/$SITE_DIR/g" /etc/apache2/sites-available/$SITE_DIR.conf
    fi
    sudo a2ensite ${SITE_DIR}
    sudo systemctl reload apache2
    
}

function DnsHostEntry() {
    sudo cat /etc/hosts | grep -i "${DOMAIN_NM}"
    local Entry_Status=$?
    if [ $Entry_Status -ne 0 ]
    then
        sudo -- sh -c -e "echo '127.0.0.1   ${DOMAIN_NM}' >> /etc/hosts";
    fi
}

function ConfigureUfw () {
    local STATUS_UFW=$(sudo ufw status | grep -i "Status:" | awk '{print $2}')
    if [ $STATUS_UFW == "active" ]
    then
        $(sudo ufw status | grep -i "80/tcp" | grep -vi "80/tcp (V6)" | awk '{print $2}')
        local STATUS_UFW_PORT=$?
        if [ $STATUS_UFW_PORT -ne 0 ]
        then
            sudo ufw allow 80/tcp
        else
            local STATUS_UFW_PORT_ALLOW=$(sudo ufw status | grep -i "80/tcp" | awk '{print $2}')
            if [ $STATUS_UFW_PORT_ALLOW == "DENY" ]
            then
                sudo ufw allow 80/tcp
            fi
        fi

    fi

        
}




# main method
NARGS=$#
if [ $NARGS -ne 3 ]
then
    echo "error: Please enter SiteDirectory,ZipLocation & DomainName correctly"
    exit 100
fi

SITE_DIR=$1
ZIP_LOC=$2
DOMAIN_NM=$3

checkAndInstallApache2


checkAndPlaceSiteDir

checkAndConfigApache2

DnsHostEntry

ConfigureUfw




#AutoSiteDeploy.sh crazyeats ~/public/crazyeats.tar.gz www.crazyeats.com