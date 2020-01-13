pragma solidity >=0.4.22 <0.6.0;

import "./chatStorage.sol";

contract Mailer is MailStorage{

     address owner;

    constructor() public{
        owner = msg.sender;
    }

    modifier onlyOwner() {
       require(msg.sender == owner);
        _;
    }
        // *** Getter Methods ***
    function addMail(string memory newMail) public onlyOwner {
        mails.push(newMail);
    }
    function getMailsByIndex(uint msgIndex) public view returns(string memory) {
        return mails[msgIndex];
    }
    function getMailIndex(address msgAddress)public view returns(uint){
        return mailStorage[msgAddress];
    }
    function countMail() view public returns(uint){
        return mails.length;
    }
    function msgIndex(uint index)view public returns(uint){
    index = countMail();
    }

}