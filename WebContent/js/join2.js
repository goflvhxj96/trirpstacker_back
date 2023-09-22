const signInBtn = document.getElementById("signIn");
const signUpBtn = document.getElementById("signUp");
const firstForm = document.getElementById("form1");
const secondForm = document.getElementById("form2");
const container = document.querySelector(".container");

signInBtn.addEventListener("click", () => {
  container.classList.remove("right-panel-active");
});

signUpBtn.addEventListener("click", () => {
  container.classList.add("right-panel-active");
});

// 회원가입 프로세스
firstForm.addEventListener("submit", (e) => {
  e.preventDefault();
  // 빈칸 확인
  let id = firstForm[0].value;
  let nickname = firstForm[1].value;
  let email = firstForm[2].value;
  let password = firstForm[3].value;
  let passwordcheck = firstForm[4].value;
  
  if (id == "") { 
    alert("아이디를 입력해주세요.");
    return;
  }
  if (nickname == "") { 
    alert("닉네임을 입력해주세요.");
    return;
  }
  if (email == "") { 
    alert("이메일을 입력해주세요.");
    return;
  }
  // 이메일 유효성 검사
  let exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
  if (exptext.test(email) == false) { 
    alert("이메일 형식이 올바르지 않습니다.");
    return;
  }
  if (password == "") { 
    alert("비밀번호를 입력해주세요.");
    return;
  }
  if (passwordcheck == "") { 
    alert("비밀번호 확인을 입력해주세요.");
    return;
  }
  if (password != passwordcheck) { 
    alert("비밀번호가 일치하지 않습니다.");
    return;
  }
  alert("회원가입이 완료되었습니다. 로그인 해주세요.");
  document.querySelector(".container").classList.remove("right-panel-active");

});

// 아이디 중복체크
let isUseId = false;
let input = document.querySelector("#signup-id");
let resultDiv = document.querySelector("#id-dup-check");
input.addEventListener("keyup", function () {
  let checkid = input.value;
  let len = checkid.length;
  if (len < 4 || len > 16) {
    isUseId = false;
    resultDiv.style.color = "red";
    resultDiv.innerHTML = "아이디는 4자 이상 16자 이하입니다."
  } else { 
    let url = root + "/user?action=idcheck&checkid=" + checkid;
    fetch(url)
    .then((response) => response.json())
    .then((data) => resultViewJson(data));
  }
});
function resultViewJSON(data){
	if (data.cnt == 0){
		isUseId = true;
		resultDiv.style.color = "blue";
		resutDiv.innerHTML = 
			data.checkid + "은 사용할 수 있습니다."
	} else {
		data.checkid + "은 사용할 수 없습니다."
	}
}


// 닉네임 중복체크



// 로그인 프로세스
secondForm.addEventListener("submit", (e) => {
  e.preventDefault()
  let email = secondForm[0].value;
  let password = secondForm[1].value;
  if (email === "ssafy@gmail.com" && password === "1234") { 
    alert("로그인 됐습니다.");
    // 히스토리가 있는 경우 뒤로가기
    if (document.referrer && document.referrer.indexOf("yoursite.com") !== -1) {
      history.back();
  }
  // 히스토리가 없는 경우 (URL을 직접 입력하여 유입된 경우)
  else {
      location.href = "main.html";    // 메인페이지로 
  }
  }
});