// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";


contract MintArtLandmarkToken is ERC721Enumerable {
    constructor() ERC721("maxlandmark",  "MAX") {}

    mapping(uint256 => uint256) public landmarkTypes;

        function mintArtLandmarkToken() public{
            uint256 landmarkTokenId = totalSupply() + 1;

            uint256 landmarkTypes = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender, landmarkTokenId)));

            _mint(msg.sender, landmarkTokenId);
        }
}