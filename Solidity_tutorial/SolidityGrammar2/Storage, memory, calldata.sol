// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract StroageMemoryCalldata {
    struct Tree { //일종의 커스텀 타입
        string color;
    }

    mapping(uint => Tree) trees; // uint 를 Tree의 ID 삼아 정보들을 볼 수 있음

    function setColor(uint _treeId, string calldata _color) public {
        Tree storage tree = trees[_treeId]; // 블록체인상에 기록된 어떠한 값을 접근하거나 변경하고자 할때는 storage라는 변수 사용

        tree.color = _color; // storage변수 어떠한 값을 기록할 때는 storage변수를 사용
    }

    function getColor(uint _treeId) public view returns(string memory) {
        Tree memory tree = trees[_treeId];

        return tree.color;// 단순히 읽을때는 memory변수로 사용
    }
} // calldata는 input데이터 라고도 부름(파라미터 등)
// calldata는 calldata 자체 영역의 데이터 사용 memory는 calldata영역의 변수를 복사해 와서 사용
// calldata 사용시 가스비 절약가능