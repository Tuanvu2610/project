
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

    const tabs = document.querySelectorAll(".tab");
    const items = document.querySelectorAll(".item");

    tabs.forEach(tab => {
        tab.addEventListener("click", () => {
            items.forEach(c => c.style.display = "none");
            document.getElementById(tab.dataset.target).style.display = "block";
        });
    });

    function openTab() {
        document.getElementById('openmodal').style.display = "block";
    }