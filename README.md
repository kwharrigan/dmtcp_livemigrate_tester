# dmtcp_livemigrate_tester

This repo is a vagrant setup for building a multimachine environment for
testing distributed application support with dmtcp.  Its intended use is for
ongoing development of live migration capabilities.  

To test:

```
$ vagrant ssh dmtcp1
$ LM_DEST_PORT=5555 dmtcp_restart
```

```
$ vagrant ssh dmtcp2
$ LM_DEST_IP=192.168.1.2 LM_DEST_PORT=5555 dmtcp_launch tests/hello_counter
```




