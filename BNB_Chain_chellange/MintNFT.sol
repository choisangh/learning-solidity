// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//https://docs.openzeppelin.com/contracts/4.x/api/token/erc721#ERC721Enumerable
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Strings.sol"; //숫자형 -> string 타입 변환 패키지


contract MintNFT is ERC721Enumerable{
    //mapping(uint => string) public metadataURIs; 단일 uri 민팅
    string public metdataURI;
    uint constant public TOTAL_NFT=10;



    constructor (string memory _metadataURI) ERC721("TomProject","TP"){
        metdataURI = _metadataURI;
    }

    function mintNFT() public {
        require(TOTAL_NFT > totalSupply(),"No more mint."); //조건 체크
        

        uint tokenID = totalSupply() + 1;
        
        _mint(msg.sender, tokenID);
    } //msg.sender = 함수를 실행하려는 사람

    function batchMint(uint _amount) public {
        for(uint i =0; i<_amount; i++){
            mintNFT();
        }
    }


    // function setTokenURI (uint _tokenId, string memory _metadataURI) public{
    //     metadataURIs[_tokenId] = _metadataURI;
    // }

    
    //override 부모 함수가 아닌 함수 정의
    function tokenURI(uint _tokenId) public override view returns(string memory) {
        // 각 json 주소 연결
      //  return metadataURIs[_tokenId];
      return string(abi.encodePacked(metdataURI, '/', Strings.toString(_tokenId), '.json'));
    }


    function transferFrom(address from, address to,uint256 tokenId) public override{
           //solhint-disable-next-line max-line-length
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: caller is not token owner or approved");

        _transfer(from, to, tokenId);
    }



    function safeTransferFrom(address from,address to,uint256 tokenId,bytes memory data) public override{
           //solhint-disable-next-line max-line-length
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: caller is not token owner or approved");

        _safeTransfer(from, to, tokenId, data);
    }

}
