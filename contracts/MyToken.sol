// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC721URIStorage, Ownable {
    constructor() ERC721("ERC721NFTToken", "NFT721") Ownable(msg.sender){}

    function mint(
        address to, 
        uint256 tokenId,
        string calldata uri 
    ) external onlyOwner {
        _mint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }
}

//check on NFC for the transaction 
