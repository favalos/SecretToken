pragma solidity ^0.4.24;

import "./lib/ERC721Metadata.sol";

contract CelebToken is ERC721Metadata {

  event TokenCreated(address celebrity, string hash);

  event TokenDelivered(address owner, string hash);

  string[] private _token;

  mapping(address => string) _ownerEncryptionKey;

  constructor() ERC721Metadata('SecretToken' , 'SCT') public {
  }

  function publish(string hash) internal returns(uint256) {
    require(msg.sender != address(0));

    uint256 tokenId = _token.push(hash);
    _mint(msg.sender, tokenId);
    _setTokenURI(tokenId, hash);
    emit TokenCreated(msg.sender, hash);

    return tokenId;
  }

  function updateEncriptionKey(string publickey) external payable {

    _ownerEncryptionKey[msg.sender] = publickey;
  }

  function getEncryptionKey(address addr) external view returns(string) {

    return _ownerEncryptionKey[addr];
  }

  function deliverToken(address maxBidder, string hash) external payable {

    uint256 tokenId = publish(hash);
    safeTransferFrom(msg.sender,maxBidder,tokenId);

    emit TokenDelivered(maxBidder, hash);
  }

}
