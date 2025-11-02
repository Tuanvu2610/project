
// Nạp nội dung từ header.html
fetch("../common/header.html")
  .then(res => res.text())
  .then(data => document.getElementById("header-placeholder").innerHTML = data);

// Nạp nội dung từ footer.html
fetch("../common/footer.html")
  .then(res => res.text())
  .then(data => document.getElementById("footer-placeholder").innerHTML = data);
//   load sản phẩm
window.addEventListener("DOMContentLoaded", () => {
    const outstandingListContainer = document.getElementById("outstanding-product-list");
    if (outstandingListContainer) {
        const outstandingProducts = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Lọ hoa Kutani", price: "2.500.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Lọ hoa Kutani", price: "2.500.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
        ];
        const amChenProducts = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
        ];
        const chumProducts = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_tra_575x766_773602eeadb34857b866db00b2ddbacc.jpg" },

        ]
        function renderProducts(containerId, templateId, productArray) {
            const container = document.getElementById(containerId);
            const template = document.getElementById(templateId);

            if (!container || !template) {
                console.error("Không tìm thấy container hoặc template ID:", containerId, templateId);
                return;
            }
            container.innerHTML = "";
            productArray.forEach(p => {
                const clone = template.content.cloneNode(true);
                clone.querySelector(".product-img").src = p.img;
                clone.querySelector(".product-img").alt = p.name;
                clone.querySelector(".product-name").textContent = p.name;
                clone.querySelector(".product-price").textContent = p.price;
                container.appendChild(clone);
            });
        }
        renderProducts("outstanding-product-list", "outstanding-product-template", outstandingProducts);
        renderProducts("amchen-product-list", "amchen-product-template", amChenProducts);
        renderProducts("chum-product-list", "chum-product-template", chumProducts);
    }
});

