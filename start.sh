if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/iSmartboiUjjwal/autofilter-and-shortner.git /autofilter-and-shortner
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /autofilter-and-shortner
fi
cd /autofilter-and-shortner
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
