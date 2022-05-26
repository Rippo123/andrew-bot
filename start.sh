if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Rippo123/andrew-bot.git /andrew-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /andrew-bot
fi
cd /andrew-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
