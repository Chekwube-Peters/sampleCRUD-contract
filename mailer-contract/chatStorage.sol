pragma solidity >=0.4.22 <0.6.0;

contract MailStorage{
    mapping(address => uint) internal mailStorage;
    string[] mails;
}

