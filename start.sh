if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/matrixbotz0/aEvaMaria /aEvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /aEvaMaria
fi
cd /aEvaMaria
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
