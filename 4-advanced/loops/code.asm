{
    for { let i := 0 } lt(i, 2) { i := add(i, 1) } {
        mstore(0, i)
        log0(0, 32)
    }
}