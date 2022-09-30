if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/PachGit/Charlie-chaplin-eva.git /Charlie-chaplin-eva
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Charlie-chaplin-eva
fi
cd /Charlie-chaplin-eva
pip3 install -U -r requirements.txt
echo "Starting ...."
python3 bot.py
