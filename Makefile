

hello_counter: hello_counter.c
	gcc hello_counter.c -o hello_counter -I/home/vagrant/dmtcp/include

tests: hello_counter

