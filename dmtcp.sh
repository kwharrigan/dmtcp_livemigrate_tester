rm -rf dmtcp
git clone https://github.com/kwharrigan/dmtcp.git
cd dmtcp
git checkout -b lvm-v1
git reset --hard origin/lvm-v1
export CXXFLAGS='-DUSE_LM'
./configure
make clean
make
chown -R vagrant:vagrant *

