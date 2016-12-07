mkdir -p tests
chown vagrant:vagrant tests
cd tests
cp /vagrant/*.c .
cp /vagrant/Makefile .
make
chown vagrant:vagrant *
