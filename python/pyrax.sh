if [[ -z $(python-pip freeze|grep pyrax) ]]
then
python-pip install pyrax
else
echo 'Pyrax already Installed'
fi
