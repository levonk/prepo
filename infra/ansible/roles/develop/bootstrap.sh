xcode-select --install
sudo easy_install pip
sudo pip install ansible
PROJPATH=proj/github/levonk
mkdir -p ${PROJPATH}
cd ${PROJPATH}
REPONAME=prepo
git clone https://github.com/levonk/${REPONAME}.git
#git clone git@github.com:levonk/${REPONAME}.git
cd ${REPONAME}
ansible-galaxy install -r requirements.yml
ansible-playbook -i inventory --ask-become-pass main.yml
