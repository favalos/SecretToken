pragma solidity ^0.4.24;

import "./CelebToken.sol";

contract AuctionToken is CelebToken {

  /*
  event BidPosted(uint256 tokenId, address poster, uint256 value);

  struct Bid {
    address bidder;
    uint value;
  }

  mapping(uint256 => Bid[]) _bidsByTokenId;

  mapping(uint256 => uint256) _maxBidByTokenId;

  mapping(uint256 => address) _maxBidderByTokenId;

  function postBid(uint256 tokenId, uint256 value) public payable returns(uint256 bidId){
    require(value >= 0);
    require(_exists(tokenId));
    require(value > _maxBidByTokenId[tokenId]);

    _bidsByTokenId[tokenId].push(Bid(msg.sender, value));
    _maxBidByTokenId[tokenId] = value;
    _maxBidderByTokenId[tokenId] = msg.sender;
    emit BidPosted(tokenId, msg.sender, value);
  }

  function withdraw(uint256 tokenId) external payable returns(bool) {
    require(_exists(tokenId));
    require(isExpired(tokenId));
    require(isAuctionCompleted(tokenId) == false);
    require(msg.sender == _maxBidderByTokenId[tokenId]);




  }

  function getMaxBid(uint256 tokenId) public view returns(uint256) {
    require(_exists(tokenId));

    return _maxBidByTokenId[tokenId];
  }




  */

}
