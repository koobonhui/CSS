let num;
num = 10;
alert(num);
console.log(num + 10);

for(let i = 0; i < 5; i++) {
	console.log(i);
}

//console.log("현재 i의 값 : " + i);

num = 50;
console.log(num);

const num2 = 100;	// const는 상수를 지정
//num2 = 1000;

console.log(num2);

let fruits = ["바나나", "사과"];
for(let i = 0; i < fruits.length; i++) {
	console.log(fruits[i]);
}

fruits = new Array("바나나", "사과");
for(let i = 0; i < fruits.length; i++) {
	console.log(fruits[i]);
}

fruits["a"] = "파인애플"; //인덱스 번호를 문자로 사용 가능
console.log(fruits["a"]);
console.log(fruits.length); //문자인덱스는 개수에 포함 안된다
fruits[100] = 3.14;
console.log(fruits[100]); //다른 자료형이 들어가도 된다
// 인덱스 번호는 원하는 번호를 사용해도 된다.
// 자바의 배열처럼 크기가 고정되지 않는다.
console.log(fruits.length);

//자바 스크립트의 배열은 자바의 컬렉션 역활도 한다.
let arr = new Array();
arr.push(10);
arr.push(20);
arr.push(30);

for(let i = 0; i < arr.length; i++) {
	console.log(arr[i]);
}

console.log("pop사용");
console.log(arr.pop() + "지움");
console.log(arr.pop() + "지움");

for(let i = 0; i < arr.length; i++) {
	console.log(arr[i]);
}

console.log("unshift 사용");
arr.unshift(100);
for(let i = 0; i < arr.length; i++) {
	console.log(arr[i]);
}