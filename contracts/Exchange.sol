pragma solidity ^0.4.24;

import "./owned.sol";
import "./FixedSupplyToken.sol";

contract Exchange is owned {
    // Struct
    struct Offer {
         uint amount;
         address who;
    }
    
    struct OrderBook {
        
        uint higherPrice;
        uint lowerPrice;
        
        mapping (uint => Offer) offers;
        
        uint offers_key;
        uint offers_length;
    }
    
    struct Token {
        
        address tokenContract;
        
        string symbolName;

        mapping (uint => OrderBook) buyBook;
        
        uint curBuyPrice;
        uint lowestBuyPrice;
        uint amountBuyPrices;
        
        mapping (uint => OrderBook) sellBook;
        uint curSellPrices;
        uint highestSellPrice;
        uint amountSellPrices;
    }
    
    // mapping symbolNameIndex with Token
    mapping (uint8 => Token) tokens; 
    uint8 symbolNameIndex;
    
    // Balance
    mapping (address => mapping (uint8 => uint)) tokenBalanceForAddress;
    
    mapping (address => uint) balanceEthForAddress;
    
    // Event
    
    // Deposit and withdraw ether
    function depositEther() payable {
        
    }
    
    function withdrawEther(uint amountInWei) {
        
    }
    
    function getEthBalanceInWei() constant returns (uint){
        
    }
    
    // Token management
    function addToken(string symbolName, address erc20TokenAddress) onlyowner {
        require(!hasToken(symbolName));
        symbolNameIndex++;
        tokens[symbolNameIndex].symbolName = symbolName;
        tokens[symbolNameIndex].tokenContract = erc20TokenAddress;
    }
    
    function hasToken(string symbolName) constant returns (bool) {
        uint8 index = getSymbolIndex(symbolName);
        if (index == 0) {
            return false;
        }
        return true;
    }

    function getSymbolIndex(string symbolName) internal returns (uint8) {
        for(uint8 i = 1; i <= symbolNameIndex; i++) {
            if (stringsEqual(tokens[i].symbolName, symbolName)) {
                return i;
            }
        }
        return 0;
    }
    
    //string comparision function
    function stringsEqual(string storage _a, string memory _b) internal returns (bool) {
        bytes storage a = bytes(_a);
        bytes memory b = bytes(_b);
        if (a.length != b.length) {
            return false;
        }
        for(uint i = 0; i < a.length; i++)
            if (a[i] != b[i])
                return false;
        return true;
        // return keccak256(_a) == keccak256(_b);
    }
    
    // Deposit and withdrawal Token
    function depositToken(string symbolName, uint amount) {
        
    }
    
    function withdrawToken(string symbolName, uint amount) {
        
    }
    
    function getBalance(string symbolName) constant returns (uint) {
        
    }
    
    // Order Book - Ask Order
    function getSellOrderBook(string symbolName) constant returns (uint[], uint[]) {
        
    }
    
    // New Order - Bid Order
    function buyToken(string symbolName, uint pricaInWei, uint amount) {
        
    }
    
    // New Order - Ask Order
    function sellToken(string symbolName, uint priceInWei, uint amount) {
        
    }
    
    // Cancel Limit Order Logic
    function cancelOrder(string symbolName, bool isSellOrder, uint priceInWei, uint offerKey) {
        
    }
}