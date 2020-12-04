# Results

`./rewrite.py`

```
TestAdd.bin-runtime
   Gas increase: 53
   Size increase: 20
   Total size increase: 20
   Size comparison:
   Unpatched:  143
   SafeMath:  508
   SafeMathOpt:  358
   Rewritten:  163
   
TestSub.bin-runtime
   Gas increase: 44
   Size increase: 18
   Total size increase: 18
   Size comparison:
   Unpatched:  144
   SafeMath:  514
   SafeMathOpt:  364
   Rewritten:  162
   
TestMul.bin-runtime
   Gas increase: 85
   Size increase: 31
   Total size increase: 31
   Size comparison:
   Unpatched:  143
   SafeMath:  570
   SafeMathOpt:  398
   Rewritten:  174
   
TestMultipleAdd.bin-runtime
   Gas increase: 176
   Size increase: 71
   Total size increase: 71
   Size comparison:
   Unpatched:  167
   SafeMath:  622
   SafeMathOpt:  450
   Rewritten:  238
```
