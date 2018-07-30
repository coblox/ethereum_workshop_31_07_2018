{
    let mem_start_first := 0
    let mem_start_second := 32

    calldatacopy(0, mem_start_first, 32)
    calldatacopy(32, mem_start_second, 32)
    
    let first := mload(mem_start_first)
    let second := mload(mem_start_second)
    
    if gt(first, second) {
        return(mem_start_first, 32)
    }
    
    return(mem_start_second, 32)    
}