pragma solidity ^0.5.3;

import './SafeMath.sol';
import './SafeMathOpt.sol';

contract TestOverflow {
    function test_add(uint256 a, uint256 b) public returns(uint256) {
        return a + b;
    }
    function test_sub(uint256 a, uint256 b) public returns(uint256) {
        return a - b;
    }
    function test_mul(uint256 a, uint256 b) public returns(uint256) {
        return a * b;
    }
    function test_div(uint256 a, uint256 b) public returns(uint256) {
        return a / b;
    }

    function () payable external {}
}

contract TestAdd {
    function test_add(uint256 a, uint256 b) public returns(uint256) {
        return a + b;
    }
}
contract TestSafeAdd {
    using SafeMath for uint256;
    function test_add(uint256 a, uint256 b) public returns(uint256) {
        return a.add(b);
    }
}
contract TestSafeOptAdd {
    using SafeMathAdd for uint256;
    function test_add(uint256 a, uint256 b) public returns(uint256) {
        return a.add(b);
    }
}

contract TestSub {
    function test_sub(uint256 a, uint256 b) public returns(uint256) {
        return a - b;
    }
}
contract TestSafeSub {
    using SafeMath for uint256;
    function test_sub(uint256 a, uint256 b) public returns(uint256) {
        return a.sub(b);
    }
}
contract TestSafeOptSub {
    using SafeMathSub for uint256;
    function test_sub(uint256 a, uint256 b) public returns(uint256) {
        return a.sub(b);
    }
}

contract TestMul {
    function test_mul(uint256 a, uint256 b) public returns(uint256) {
        return a * b;
    }
}
contract TestSafeMul {
    using SafeMath for uint256;
    function test_mul(uint256 a, uint256 b) public returns(uint256) {
        return a.mul(b);
    }
}
contract TestSafeOptMul {
    using SafeMathMul for uint256;
    function test_mul(uint256 a, uint256 b) public returns(uint256) {
        return a.mul(b);
    }
}

contract TestDiv {
    function test_div(uint256 a, uint256 b) public returns(uint256) {
        return a / b;
    }
}
contract TestSafeDiv {
    using SafeMath for uint256;
    function test_div(uint256 a, uint256 b) public returns(uint256) {
        return a.div(b);
    }
}


contract TestMultipleAdd {
    function test_add(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e) public returns(uint256) {
        return a + b + c + d + e;
    }
}

contract TestSafeMultipleAdd {
    using SafeMath for uint256;
    function test_add(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e) public returns(uint256) {
        return a.add(b).add(c).add(d).add(e);
    }
}

contract TestSafeOptMultipleAdd {
    using SafeMathAdd for uint256;
    function test_add(uint256 a, uint256 b, uint256 c, uint256 d, uint256 e) public returns(uint256) {
        return a.add(b).add(c).add(d).add(e);
    }
}
