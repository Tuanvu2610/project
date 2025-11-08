
window.addEventListener("DOMContentLoaded", () => {
    const outstandingListContainer = document.getElementById("outstanding-product-list");
    if (outstandingListContainer) {
        const outstandingProducts = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Lọ hoa Kutani", price: "2.500.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Lọ hoa Kutani", price: "2.500.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
        ];
        const amChenProducts = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
        ];
        const chumProducts = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },

        ];
        /* gom tho cung */
        const dotho = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
        ];
        const bathuong = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },

        ];
        const mambong = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },

        ];
        const batnap = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },

        ];
        const dennen = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },

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
        renderProducts("dotho-product-list", "dotho-product-template", dotho);
        renderProducts("bathuong-product-list", "bathuong-product-template", bathuong);
        renderProducts("mambong-product-list", "mambong-product-template", mambong);
        renderProducts("batnap-product-list", "batnap-product-template", batnap);
        renderProducts("dennen-product-list", "dennen-product-template", dennen);
    }
});


