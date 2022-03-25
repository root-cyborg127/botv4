if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/root-cyborg127/botv4.git /botv4
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /botv4
fi
cd /botv4
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
