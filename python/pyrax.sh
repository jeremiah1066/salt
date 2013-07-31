if [[ -z $(python-pip freeze|grep pyrax) ]]
then
python-pip install pyrax > /dev/null
else
echo 'Pyrax already Installed'
fi
