echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/iumohammady/VCPlayer /VCPlayer
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/iumohammady/VCPlayer -b $BRANCH /VCPlayer
fi
cd /VCPlayer
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
