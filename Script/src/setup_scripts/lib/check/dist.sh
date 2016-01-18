if [ -e /etc/debian_version ] || [ -e /etc/debian_release ] ; then
        if [ -e /etc/lsb-release ] ; then
                DISTRIBUTE="ub"
                echo "Ubuntu"
        else
                DESTRIBUTE="deb"
                echo "Debian"
                echo "Warn: Experimental Support."
        fi
else
        echo "Not Supported"
        exit 1
fi
