# Distributed Programming

## Setting Up an Erlang Cluster
* Host
* A branch of erlang node together on a singler computer by hostname
* Erlang VM setup a connection with another erlang node
* Own node name by calling the BIF node() 

## Cookies
* add a token value call cookie and unique value that must be shared between nodes to allow them to connect together.
* security featureand and divide cluster of nodes as authentication mechanism

## Remote Shells
|Command|Description|
|---|---|
|c [nn]|Connect to job|
|i [nn]|interrupt job|
|k [nn]|kill job|
|j|list all job|
|s[shell]|start local shell|
|r[node[shell]]|start remote shell|
|q |quit erlang|
|?/h |this message|


#### [Pin Pong Example 1](https://github.com/weihuang023/Erlang-Projects/blob/master/tut17.erl)

#### [Pin Pong Example 2](https://github.com/weihuang023/Erlang-Projects/blob/master/tut18.erl) 

