// SIGNIN TO RESET PASSWORD AND VICE VERSA
const sinbtn = document.getElementById("forget-btn");  
const soutbtn = document.getElementById("reset-btn"); 
const section=document.querySelector(".Register-section");

const email=document.getElementById("email");
const password=document.getElementById("password");
const cpassword=document.getElementById("cpassword");


sinbtn.addEventListener('click', (event) => {
    section.classList.toggle('active');
});

soutbtn.addEventListener('click', (event) => {
	
    section.classList.toggle('active');
	
});
