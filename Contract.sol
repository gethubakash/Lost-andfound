// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LostAndFound {
    struct LostItem {
        string description;
        string location;
        uint256 timestamp;
        address reporter;
        bool isFound;
        string contactInformation;
    }

    // Array to store all lost items
    LostItem[] public lostItems;
    
    // Event emitted when a new item is reported as lost
    event ItemReported(uint256 indexed itemId, string description, string location);
    
    // Event emitted when an item is marked as found
    event ItemFound(uint256 indexed itemId);

    // Function to report a lost item
    function reportLostItem(
        string memory _description,
        string memory _location,
        string memory _contactInformation
    ) public returns (uint256) {
        LostItem memory newItem = LostItem({
            description: _description,
            location: _location,
            timestamp: block.timestamp,
            reporter: msg.sender,
            isFound: false,
            contactInformation: _contactInformation
        });
        
        lostItems.push(newItem);
        uint256 itemId = lostItems.length - 1;
        
        emit ItemReported(itemId, _description, _location);
        return itemId;
    }

    // Function to mark an item as found
    function markItemAsFound(uint256 _itemId) public {
        require(_itemId < lostItems.length, "Item ID does not exist");
        require(msg.sender == lostItems[_itemId].reporter, "Only the reporter can mark item as found");
        require(!lostItems[_itemId].isFound, "Item is already marked as found");
        
        lostItems[_itemId].isFound = true;
        emit ItemFound(_itemId);
    }

    // Function to get total number of lost items
    function getTotalLostItems() public view returns (uint256) {
        return lostItems.length;
    }

    // Function to get details of a specific lost item
    function getLostItem(uint256 _itemId) public view returns (
        string memory description,
        string memory location,
        uint256 timestamp,
        address reporter,
        bool isFound,
        string memory contactInformation
    ) {
        require(_itemId < lostItems.length, "Item ID does not exist");
        LostItem memory item = lostItems[_itemId];
        return (
            item.description,
            item.location,
            item.timestamp,
            item.reporter,
            item.isFound,
            item.contactInformation
        );
    }

    // Function to get all active (not found) lost items
    function getActiveLostItems() public view returns (uint256[] memory) {
        uint256 activeCount = 0;
        
        // First count active items
        for (uint256 i = 0; i < lostItems.length; i++) {
            if (!lostItems[i].isFound) {
                activeCount++;
            }
        }
        
        // Create array of active item IDs
        uint256[] memory activeItems = new uint256[](activeCount);
        uint256 currentIndex = 0;
        
        // Fill array with active item IDs
        for (uint256 i = 0; i < lostItems.length; i++) {
            if (!lostItems[i].isFound) {
                activeItems[currentIndex] = i;
                currentIndex++;
            }
        }
        
        return activeItems;
    }
}