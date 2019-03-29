Update the packages and install dependencies
```bash
sudo apt update
sudo apt upgrade
sudo apt install postgresql-server-dev-10 checkinstall python-dev python-virtualenv
```

Clone the repository for pg-extension, build and install
```bash
git clone https://github.com/acoustid/pg_acoustid
cd pg_acoustid
make
sudo checkinstall
```

Clone the repository for acoustid-server
```bash
git clone https://github.com/acoustid/acoustid-server
```

Create a virtual environment and install dependencies
```bash
cd acoustid-server
virtualenv e
source e/bin/activate
pip install -r requirements.txt
```

Create configuration file
```bash
cp acoustid.conf.dist acoustid.conf
nano acoustid.conf # Update configuration details and save the file
```

Create database and database user
```bash
sudo -u postgres -i
createuser acoustid
createdb -O acoustid acoustid
psql acoustid -c 'CREATE EXTENSION intarray;'
psql acoustid -c 'CREATE EXTENSION pgcrypto;'
psql acoustid -c 'CREATE EXTENSION acoustid;'
exit;
```

Create database structure
```bash

./run_psql.sh < sql/CreateTables.sql
./run_psql.sh < sql/CreatePrimaryKeys.sql
./run_psql.sh < sql/CreateFKConstraints.sql
./run_psql.sh < sql/CreateIndexes.sql
```

Clone chromaprint repository, build and install
```bash
cd ~
sudo apt install libavresample-dev libpostproc-dev libswscale-dev libavformat-dev libavfilter-dev libavdevice-dev libavcodec-dev libswresample-dev
sudo apt install ffmpeg cmake checkinstall
git clone https://github.com/DavisDevasia/chromaprint
cd chromaprint
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TOOLS=ON -DFFT_LIB=avfft .
make
sudo checkinstall
```

Sync acoustid
```bash
cd ~/acoustid-server
cd admin
screen -S acoustid_sync -dmL ./run-sync-acoustid.sh
```


Run crons to verify that no errors are there
```bash
cd ~
./acoustid-server/admin/cron/hourly.sh
./acoustid-server/admin/cron/daily.sh
```

Open crontab
```bash
crontab -e
```
Enter the following and save the file
```text
0 * * * * /home/ubuntu/acoustid-server/admin/cron/hourly.sh
0 0 * * * /home/ubuntu/acoustid-server/admin/cron/daily.sh
```
Remember to use a random minute and hour to avoid peaks.

# Start server
```bash
cd ~/acoustid-server
./run_web.sh --host=0.0.0.0 --port=5001 --api
```
