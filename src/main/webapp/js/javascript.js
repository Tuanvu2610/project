
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
            hideAll();
            document.getElementById(tab.dataset.target).style.display = "block";
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
