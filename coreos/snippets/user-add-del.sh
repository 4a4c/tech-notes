# Set Vars
USER_MOD='<username>'
USER_MOD_KEY='<ssh-rsa>'

# Add User
sudo useradd \
    -m \
    -p "*" \
    -N \
    -G wheel,sudo,docker \
    ${USER_MOD}

# Add SSH Key
echo ${USER_MOD_KEY} | \
    sudo update-ssh-keys \
    -u ${USER_MOD} \
    -a ${USER_MOD}

# Remove User (if needed)
sudo userdel -r ${USER_MOD}
