# Concurrent Programming

## Process - _Thread of execution_ 
* A concurrent activity. 
* A Complete virtual machine. 
* The System may have many concurrent processes executing at the same time.
  * BIF spawn (Module, Exported_function, List of Arguments) 
  * PID - process indtifier <0.44.0>
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

## Receive Statement 
* Similar to case ... of

### [Dolphins Example](https://github.com/weihuang023/Erlang-Projects/blob/master/dolphins.erl)

1.The function hits the receive statement, give the process mail box is empty, our dolphoin waits until it gets a message;

2.The message "Oh hello doophin is recied.
   * the fuction tries to pattern match aginst do a filp
   * this fauks and so the pattern fish is tried and also fails.
   * finally, the message meets the catch all clause (_) and matches.

3.the process outputs message "heh, we're smarter than your humans."

### [Ping Pong Example 1](https://github.com/weihuang023/Erlang-Projects/blob/master/tut15.erl)

### [Ping Pong Example 2](https://github.com/weihuang023/Erlang-Projects/blob/master/tut16.erl)


