
window.addEventListener("DOMContentLoaded", () => {
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
        const amChenProducts2 = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },

        ]
        const batDiaProduct2 = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },

        ]
        const chumProduct2 = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },

        ]
        const nhatamProduct2 = [
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },
            { name: "Bộ ấm chén Sen Vàng", price: "1.200.000đ", img: "../img/bo_binh_6_coc_8.jpg" },

        ]
        const dennguProduct2 = [
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
                const priceOriginEl = clone.querySelector(".price-origin");
                if (priceOriginEl) {
                    if (p.priceOrigin) priceOriginEl.textContent = p.priceOrigin;
                    else priceOriginEl.style.display = "none";
                }
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
    renderProducts("amchen-product-list-2", "amchen-product-template-2", amChenProducts2);
    renderProducts("batdia-product-list-2", "batdia-product-template-2", batDiaProduct2);
    renderProducts("chum-product-list-2", "chum-product-template-2", chumProduct2);
    renderProducts("nhatam-product-list-2", "nhatam-product-template-2", nhatamProduct2);
    renderProducts("denngu-product-list-2", "denngu-product-template-2", dennguProduct2);
});


