# Erlang - Projects:
![][logo]
[logo]:https://github.com/weihuang023/Erlang-Projects/blob/master/ErlangLogo.png 
[Cheat Sheet](https://github.com/weihuang023/Erlang-Projects/blob/master/CheatSheet.jpg) 

[Concurrent Programming](https://github.com/weihuang023/Erlang-Projects/blob/master/ConcurrentProgramming.md) 

[Distributed Programming](https://github.com/weihuang023/Erlang-Projects/blob/master/DistributedProgramming.md)

## tut - [Basic Information about Erlang file](https://github.com/weihuang023/Erlang-Projects/blob/master/tut0.erl)
* Each file contain an Erlang Module
* "." is End of the line
* file name is ".erl"
* -export contain argument and that is funcation can be use from outside module

## tut1 - [What is in Fucntion?](https://github.com/weihuang023/Erlang-Projects/blob/master/tut1.erl)
* A Fuction can have many arguments. (Example: - export: fac/1 and mult/1)

## tut2 - [What are arguments?](https://github.com/weihuang023/Erlang-Projects/blob/master/tut2.erl)
* Converting from inch to centimeter or converting from centimeter to inch
* One arugments can have many fucntion 

## tut3 - [Fucntion and Argument](https://github.com/weihuang023/Erlang-Projects/blob/master/tut3.erl)
* tut3:convert_length(tut3:convert_length({inch,5})). This is reassurinigly get back to the original value.
* metric conversion : the arugment to a fucntion can be result of another fucntion

## Data Types - [What are Data Types?](https://github.com/weihuang023/Erlang-Projects/blob/master/DATATYPE.md)
* There are two types of  numberic literals, integers and floats
* number < atom < reference < fun < port < pid < tuple < list < bit string
* Variable is binding a value and mutiple variable are able to assign values simultaneously 

## Write output to a Terminal (_io:format_)
* io:format("Display in Terminal~n",[]).
* io:format("Display the variable word: ~w~n",[Word]).
* space will show in terminal.
* ~n new line
* function itself returns the atom ok if everything goes as planned.

## Term Comparisons
|op | Description|
|---|---|
|==|equal to|
|/=|not equal to|
|=<|less than or equal to|
|<|less than|
|>=|greater than or equal to|
|>|greater than|
|=:=|exactly equal to|
|=/=|exactly not equal to|

## Arithmetic Expressions
|op|Description|Argument type|
|---|---|---|
|+|unary +|number|
|-|unary -|number|
|+||number|
|-||number|
|*||number|
|/|floating point division|number|
|bnot|unary bitwise not|integer|
|div|integer division|integer|
|rem|integer rem of X/Y|integer|
|band|biwise and|integer|
|bor|biwise or|integer|
|bxor|arithmetic bitwise xor|integer|
|bsl|arithmetic bitshift left|integer|
|bsr|bitshift right|integer|

## Boolean Expressions
|op|Description|
|---|---|
|not|unary logical not|
|and|logical and|
|or|logical or|
|xor|logical xor|

#### [Nested Function and Argument Example](https://github.com/weihuang023/Erlang-Projects/blob/master/tut5.erl) 

#### [Find the Max Example](https://github.com/weihuang023/Erlang-Projects/blob/master/tut6.erl)

#### [Resvering the order of list Example](https://github.com/weihuang023/Erlang-Projects/blob/master/tut8.erl)

#### [Find the cities with the maximum and minimum temperatures](https://github.com/weihuang023/Erlang-Projects/blob/master/tut7.erl)

#### [If and Case Example 1](https://github.com/weihuang023/Erlang-Projects/blob/master/tut9.erl)
#### [If and Case Example 2](https://github.com/weihuang023/Erlang-Projects/blob/master/tut11.erl)

```erlang
if 
  Condition 1 ->
    Action 1;
  Condition 2 ->
    Action 2;
  Condition 3 ->
    Action 3;
  Condition 4 ->
    Action 4
end
```

#### [Map and Sort the list Example](https://github.com/weihuang023/Erlang-Projects/blob/master/tut13.erl)
* anonymous variable "_"
