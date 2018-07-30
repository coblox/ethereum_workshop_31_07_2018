{
    calldatacopy(0, 0, 32)
    calldatacopy(32, 32, 32)
    mload(0)
    mload(32)
    gt
    greater_than
    jumpi
    return(0, 32)

greater_than:
    return(32, 32)    
}