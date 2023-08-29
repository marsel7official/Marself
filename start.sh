if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/harshil8981/MrkillerDeveloperv2.git /MrkillerDeveloperv2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MrkillerDeveloperv2
fi
cd /MrkillerDeveloperv2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
