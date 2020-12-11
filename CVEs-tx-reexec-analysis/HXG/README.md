0x776da02ce8ce3cc882eb7f8104c31414f9fc756405745690bcf8df21e779e8a4:

in: burn(uint256 value)
burn(): 0x42966c68
value:  fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe

safemath probably failed at line 49:
```
balance[0x0] = balance[0x0].add(value)
```

Since this function is to burn coins, here is a false positive as we do not care whether balance[0x0] would overflow or not.
