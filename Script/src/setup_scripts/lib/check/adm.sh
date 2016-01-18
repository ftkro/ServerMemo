echo -n "Root user: "
if [ ${EUID:-${UID}} = 0 ]; then
        echo "root"
else
        echo "Non-root."
        exit 1
fi
