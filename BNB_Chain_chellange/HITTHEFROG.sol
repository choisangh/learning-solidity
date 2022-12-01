// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MintNFT is ERC721Enumerable, Ownable {
    uint constant public TOTAL_NFT = 30;
    string public metadataURI;
    string public notRevealedURI;
    bool public isRevealed;
    mapping(address => uint) whitelist;

    constructor(string memory _metadataURI, string memory _notRevealedURI) ERC721("HIT THE FROG", "HTF") {
        metadataURI = _metadataURI;
        notRevealedURI = _notRevealedURI;
    }

    function mintNFT() public payable { //payable
        require(TOTAL_NFT > totalSupply(), "No more mint.");
        require(whitelist[msg.sender]>0,"Not whitelist.");
        //require(msg.value >= 0.1 ether, "Not Enough BNB.");

        uint tokenId = totalSupply() + 1;

        _mint(msg.sender, tokenId);

        whitelist[msg.sender]--; // whitelist[msg.sender] = whitelist[msg.sennder] -1;

        payable(owner()).transfer(msg.value); //owner -> smart contract 배포자

        //payable(owner()).transfer(수수료);
        //payable(판매자).transfer(msg.value-수수료);

        
    }

    function batchMintNFT(uint _amount) public {
        for(uint i = 0; i < _amount; i++) {
            mintNFT();
        }
    }

    function tokenURI(uint _tokenId) public override view returns (string memory) {
        if(isRevealed == false) return notRevealedURI;

        return string(abi.encodePacked(metadataURI, '/', Strings.toString(_tokenId), '.json'));
    }


    function reveal() public onlyOwner {
        isRevealed = true;
    }

    function setWhitelist(address _whitelist, uint _amount) public onlyOwner{ //onlyOwner -> 배포자만 실행가능
        whitelist[_whitelist] = _amount;
    }


    function transferFrom(address from, address to,uint256 tokenId) public override{
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: caller is not token owner or approved");
        require(whitelist[to]>0,"Not whitelist.");
        _transfer(from, to, tokenId);
    }


    function safeTransferFrom(address from,address to,uint256 tokenId) public override {
        require(whitelist[to]>0,"Not whitelist.");
        safeTransferFrom(from, to, tokenId, "");
    }


    function safeTransferFrom(address from,address to,uint256 tokenId,bytes memory data) public override{
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: caller is not token owner or approved");
        require(whitelist[to]>0,"Not whitelist.");
        _safeTransfer(from, to, tokenId, data);
    }







}