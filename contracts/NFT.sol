// SPDX-License-Identifier: UNLICENCED

pragma solidity ^0.8.0;

import "openzepplin-v8/token/ERC1155/ERC1155.sol";
import "openzepplin-v8/access/Ownable.sol";

// contract NFT is ERC1155 and Ownable.

contract NFT is ERC1155, Ownable{
    uint256 constant public meme_exe = 0;
    uint256 constant public Yuu_Otosaka = 1;

    constructor() ERC1155(""){
        _mint(msg.sender,meme_exe,0,"");
        _mint(msg.sender,Yuu_Otosaka,1,"");
    }

    function mint(address account, uint256 id , uint256 amount) public onlyOwner{
        _mint (account, id , amount,"");
    }


    function burn(address account , uint256 id , uint amount) public {
        require(msg.sender == account);
        _burn (account, id, amount);
    }

}


