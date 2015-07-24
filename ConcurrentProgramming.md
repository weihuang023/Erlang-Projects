### Concurrent Programming

## Process - _Thread of execution_ 
* A concurrent activity. 
* A Complete virtual machine. 
* The System may have many concurrent processes executing at the same time.
  * BIF spawn (Module, Exported_function, List of Arguments) 
  * PID - process indtifier
* [Say something Example](https://github.com/weihuang023/Erlang-Projects/edit/master/tut14.erl)

## Concurrency 
* Programs which can handle serval threads of excution at the same time.

## Message
* A method of communication between process.
* Message Passing is the operator !, Bang Symbol. 
* Self() ! hello. or Self() ! Self() ! double. 

## Timeout 
* Mechanism for waiting for a given time period.

## Registered Process 
* Process which has been registered under a name.

## Client/Server Model 
* Standard model used in building concurrent systems.

#### Receive Statement 
* Similar to case ... of
 

### [Dolphins Example](https://github.com/weihuang023/Erlang-Projects/blob/master/dolphins.erl)
### [Ping Pong Example 1](https://github.com/weihuang023/Erlang-Projects/blob/master/tut15.erl)
### [Ping Pong Example 2](https://github.com/weihuang023/Erlang-Projects/blob/master/tut16.erl)


