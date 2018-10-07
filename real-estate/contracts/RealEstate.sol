pragma solidity ^0.4.23;

contract RealEstate {
    struct Buyer { 
        address buyerAddress;
        bytes32 name;
        uint age;
    }

    mapping(uint => Buyer) public buyerInfo;
    address public owner;
    address[10] public buyers;

    //event
    event LogBuyRealEstate(
        address _buyer,
        uint _id
    );

    // 소유자 설정
    constructor() public { 
        owner = msg.sender;
    }


    //매물구입함수
    function buyRealEstate(uint _id,bytes32 _name,uint _age) public payable {
        require(_id>=0 && _id<=9);
        buyers[_id] = msg.sender;
        buyerInfo[_id] = Buyer(msg.sender, _name, _age);

        owner.transfer(msg.value);
        emit LogBuyRealEstate(msg.sender, _id);
    }

    function getBuyerInfo(uint _id) public view returns (address, bytes32, uint) {
        //리턴타입 명시는 buyerInfo와 맞춰준 것
        //매개변수로 받은 매물의 Id를 사용해서 buyerInfo의 키값으로쓰고 해당 값을 가져오자. 
        
        Buyer memory buyer =  buyerInfo[_id];
        //매개변수 _id를 넘겨서 키값으로 쓰고 해당 buyer를 가져와서 변수에 저장 
        //memory 함수가 끝나면 휘발한다. 
        
        //변수 안에 있는 필드들을 리턴하면 된다. 
        return (buyer.buyerAddress, buyer.name, buyer.age);
    }

    // 매입자들의 계정 주소를 저장하는 buyers 배열을 리턴하는 함수
    function getAllBuyers() public view returns (address[10]) {
        return buyers;
    }
}

