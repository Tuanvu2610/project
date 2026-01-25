
// an/hien mat khau
window.togglePassword = function(id, el) {
    const input = document.getElementById(id);
    if (input.type === 'password') {
        input.type = 'text';
        el.textContent = '🙈';
    } else {
        input.type = 'password';
        el.textContent = '🐵';
    }
};

document.addEventListener("DOMContentLoaded", function () {
    const tabs = document.querySelectorAll(".tab");
    const items = document.querySelectorAll(".item");

    function hideAll() {
        items.forEach(i => i.style.display = "none");
    }
    tabs.forEach(tab => {
        tab.addEventListener("click", e => {
            e.preventDefault();

            tabs.forEach(t => t.classList.remove("active"));
            tab.classList.add("active");

            hideAll();

            const target = document.getElementById(tab.dataset.target);
            if (target) target.style.display = "block";
        });
    });
    const params = new URLSearchParams(window.location.search);
    const tabFromUrl = params.get("tab");
    if (tabFromUrl) {
        hideAll();
        const el = document.getElementById(tabFromUrl);
        if (el) el.style.display = "block";
    } else {
        if (items.length> 0){
            items[0].style.display = "block";
        }
    }
});
function openTab() {
    document.getElementById('openmodal').style.display = "block";
}

//login, signup, forgot
function showLogin() {
    document.getElementById('loginModal').classList.add('active');
    document.getElementById('signupModal').classList.remove('active');
    document.getElementById('forgotModal').classList.remove('active');
}
function showSignup() {
    document.getElementById('loginModal').classList.remove('active');
    document.getElementById('signupModal').classList.add('active');
    document.getElementById('forgotModal').classList.remove('active');
}
function showForgotPass() {
    document.getElementById('loginModal').classList.remove('active');
    document.getElementById('signupModal').classList.remove('active');
    document.getElementById('forgotModal').classList.add('active');
}
document.addEventListener("DOMContentLoaded", function () {
    showLogin();
});
