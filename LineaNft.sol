// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract LineaNft is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    string private _metadataUrl;

    constructor() ERC721("Linea NFT", "LNFT") {

        // Set metadata of the NFT
        _metadataUrl = "ipfs://QmUyZoK21qb8YknXGfDB34RTY8vMqPb6Bsj9U9iLEnyrZR";

        // Mint NFT
        _mintNFT();
    }

    function _mintNFT() private {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, _metadataUrl);
    }
}