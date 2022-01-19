pragma solidity ^0.5.0;

contract TodoList {
    //----> state variable
    uint public taskCount = 0;

    //----> struct allow us to define our own data types 
    // solidity is a statictly typed language

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("Check out dappuniversity.com");
    }

    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

    // constructor function Innit funciton
}