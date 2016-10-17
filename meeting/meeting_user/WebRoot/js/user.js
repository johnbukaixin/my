function testUname() {
		var reg = /^[a-zA-Z]\w{5,11}$/ig;
		var uname = document.getElementById("uname").value;
		var span = document.getElementById("unameSpan");
		if (uname == "" && uname.length == 0) {
			span.innerHTML = "用户名不能为空";
			span.style.color = "#fc4343";
		} else if (!reg.test(uname)) {
			span.innerHTML = "6-12位字母数字下划线用户名";
			span.style.color = "#fc4343";
		} else {
			var req = null;
			if (window.XMLHttpRequest) {
				req = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				req = new ActiveXObject("Msxml2.XMLHTTP");
			} else {
				alert("您的浏览器版本不支持ajax，请更换更高级的浏览器");
			}
			req.open("get", "user.do?operation=only&uname=" + uname);
			req.onreadystatechange = function() {
				//ajax的状态信息--http协议的状态信息
				if (req.readyState == 4 && req.status == 200) {
					var flag = req.responseText;
					if (flag == "true") {
						span.innerHTML = "OK";
						span.style.color = "#3c7649";
					} else {
						span.innerHTML = "用户名已被使用";
						span.style.color = "#fc4343";
					}
				}
			}
			req.send(null);
		}
	}
	
	function testPwd() {
			var reg = /\w{5,7}$/ig;
			var pwd = document.getElementById("pwd").value;
			var pwdSpan = document.getElementById("pwdSpan");
			//var value = pwd.value;
			if(pwd != null && reg.test(pwd)) {
				pwdSpan.innerHTML = "ok";
				pwdSpan.style.color = "#3c7649";
			} else {
				pwdSpan.innerHTML = "密码必须为6-8位";
				pwdSpan.style.color = "#fc4343";
			}
		}
		
		function testRealName() {
			var reg = /^[\u4e00-\u9fa5]{2,6}$/ig;
			var realname = document.getElementById("realname").value;
			var realnameSpan = document.getElementById("realnameSpan");
			if(realname != null && reg.test(realname)) {
				realnameSpan.innerHTML = "ok";
				realnameSpan.style.color = "#3c7649";
			} else {
				realnameSpan.innerHTML = "真实姓名为2-6位汉字";
				realnameSpan.style.color = "#fc4343";
			}
		}
		function testEmail(){
		  var reg= /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/ig;
		  var email=document.getElementById("email").value;
		  var emailSpan=document.getElementById("emailSpan");
		  if(email!=null&&reg.test(email)){
		        emailSpan.innerHTML = "ok";
				emailSpan.style.color = "#3c7649";
		  }else{
		        emailSpan.innerHTML = "邮箱格式不正确";
				emailSpan.style.color = "#fc4343"; 
		  }
		}
		
		function testAge(){
		  var reg=/^(?:[1-9][0-9]?|1[01][0-9]|120)$/ig;
		  var age=document.getElementById("age").value;
		  var ageSpan=document.getElementById("ageSpan");
		  if(age!=null&&reg.test(age)){
		        ageSpan.innerHTML = "ok";
				ageSpan.style.color = "#3c7649";
		  }else{
		        ageSpan.innerHTML = "1-120的数字";
				ageSpan.style.color = "#fc4343"; 
		  }
		}