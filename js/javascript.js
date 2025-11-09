
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
        /* trang tri */
         const discountProducts = [
             { name: "Mai bình tích lộc họa tiết công đào vẽ vàng men", price: "8.000.000đ", img: "https://chudau.com.vn/wp-content/uploads/2024/03/z4789392283010_6af7bb32d5d90152c5916845e4a05ccf.jpg" },
             { name: "Mai bình tích lộc họa tiết công đào vẽ vàng men", price: "8.000.000đ", img: "https://chudau.com.vn/wp-content/uploads/2024/03/z4789392283010_6af7bb32d5d90152c5916845e4a05ccf.jpg" },
             { name: "Mai bình tích lộc họa tiết công đào vẽ vàng men", price: "8.000.000đ", img: "https://chudau.com.vn/wp-content/uploads/2024/03/z4789392283010_6af7bb32d5d90152c5916845e4a05ccf.jpg" },
             { name: "Mai bình tích lộc họa tiết công đào vẽ vàng men", price: "8.000.000đ", img: "https://chudau.com.vn/wp-content/uploads/2024/03/z4789392283010_6af7bb32d5d90152c5916845e4a05ccf.jpg" },
             { name: "Mai bình tích lộc họa tiết công đào vẽ vàng men", price: "8.000.000đ", img: "https://chudau.com.vn/wp-content/uploads/2024/03/z4789392283010_6af7bb32d5d90152c5916845e4a05ccf.jpg" },
             { name: "Mai bình tích lộc họa tiết công đào vẽ vàng men", price: "8.000.000đ", img: "https://chudau.com.vn/wp-content/uploads/2024/03/z4789392283010_6af7bb32d5d90152c5916845e4a05ccf.jpg" },
             { name: "Mai bình tích lộc họa tiết công đào vẽ vàng men", price: "8.000.000đ", img: "https://chudau.com.vn/wp-content/uploads/2024/03/z4789392283010_6af7bb32d5d90152c5916845e4a05ccf.jpg" },
             { name: "Mai bình tích lộc họa tiết công đào vẽ vàng men", price: "8.000.000đ", img: "https://chudau.com.vn/wp-content/uploads/2024/03/z4789392283010_6af7bb32d5d90152c5916845e4a05ccf.jpg" },
         ];
        const luckyVaseProducts = [
            { name: "Bình hút tài lộc", price: "2.200.000", img: "https://decopro.vn/wp-content/uploads/2020/03/Binh-hut-tai-loc-tu-canh-gom-chu-dau-ve-vang-h30-view.jpg"},
            { name: "Bình hút tài lộc", price: "2.200.000", img: "https://decopro.vn/wp-content/uploads/2020/03/Binh-hut-tai-loc-tu-canh-gom-chu-dau-ve-vang-h30-view.jpg"},
            { name: "Bình hút tài lộc", price: "2.200.000", img: "https://decopro.vn/wp-content/uploads/2020/03/Binh-hut-tai-loc-tu-canh-gom-chu-dau-ve-vang-h30-view.jpg"},
            { name: "Bình hút tài lộc", price: "2.200.000", img: "https://decopro.vn/wp-content/uploads/2020/03/Binh-hut-tai-loc-tu-canh-gom-chu-dau-ve-vang-h30-view.jpg"},
            { name: "Bình hút tài lộc", price: "2.200.000", img: "https://decopro.vn/wp-content/uploads/2020/03/Binh-hut-tai-loc-tu-canh-gom-chu-dau-ve-vang-h30-view.jpg"},
        ];
        const tybaProducts = [
            {name: "Lọ tỳ bà “Công đào” cổ thấp màu xanh biển đắp nổi", price: "15.900.000", img: "https://bizweb.dktcdn.net/100/516/168/files/ty-ba-dap-noi-tung-hac-dien-nien-gom-su-bat-trang-phuc-loc-vien-minh.webp?v=1717124868521"},
            {name: "Lọ tỳ bà “Công đào” cổ thấp màu xanh biển đắp nổi", price: "15.900.000", img: "https://bizweb.dktcdn.net/100/516/168/files/ty-ba-dap-noi-tung-hac-dien-nien-gom-su-bat-trang-phuc-loc-vien-minh.webp?v=1717124868521"},
            {name: "Lọ tỳ bà “Công đào” cổ thấp màu xanh biển đắp nổi", price: "15.900.000", img: "https://bizweb.dktcdn.net/100/516/168/files/ty-ba-dap-noi-tung-hac-dien-nien-gom-su-bat-trang-phuc-loc-vien-minh.webp?v=1717124868521"},
            {name: "Lọ tỳ bà “Công đào” cổ thấp màu xanh biển đắp nổi", price: "15.900.000", img: "https://bizweb.dktcdn.net/100/516/168/files/ty-ba-dap-noi-tung-hac-dien-nien-gom-su-bat-trang-phuc-loc-vien-minh.webp?v=1717124868521"},
            {name: "Lọ tỳ bà “Công đào” cổ thấp màu xanh biển đắp nổi", price: "15.900.000", img: "https://bizweb.dktcdn.net/100/516/168/files/ty-ba-dap-noi-tung-hac-dien-nien-gom-su-bat-trang-phuc-loc-vien-minh.webp?v=1717124868521"},
        ];
        const tuonggomProducts = [
            {name: "Tượng 4 chú tiểu học võ", price: "150.000", img: "https://dochoiotogiare.com/wp-content/uploads/2018/10/bo-tuong-chu-tieu-4-the-vo-600x600.jpg"},
            {name: "Tượng 4 chú tiểu học võ", price: "150.000", img: "https://dochoiotogiare.com/wp-content/uploads/2018/10/bo-tuong-chu-tieu-4-the-vo-600x600.jpg"},
            {name: "Tượng 4 chú tiểu học võ", price: "150.000", img: "https://dochoiotogiare.com/wp-content/uploads/2018/10/bo-tuong-chu-tieu-4-the-vo-600x600.jpg"},
            {name: "Tượng 4 chú tiểu học võ", price: "150.000", img: "https://dochoiotogiare.com/wp-content/uploads/2018/10/bo-tuong-chu-tieu-4-the-vo-600x600.jpg"},
            {name: "Tượng 4 chú tiểu học võ", price: "150.000", img: "https://dochoiotogiare.com/wp-content/uploads/2018/10/bo-tuong-chu-tieu-4-the-vo-600x600.jpg"},
        ] ;
        const holoProducts = [
            {name: "Bình sứ hồ lô", price: "9.900.000", img: "https://www.ladora.com.vn/wp-content/uploads/2024/10/ho-lo-phong-thuy-dv070-11.jpg"},
            {name: "Bình sứ hồ lô", price: "9.900.000", img: "https://www.ladora.com.vn/wp-content/uploads/2024/10/ho-lo-phong-thuy-dv070-11.jpg"},
            {name: "Bình sứ hồ lô", price: "9.900.000", img: "https://www.ladora.com.vn/wp-content/uploads/2024/10/ho-lo-phong-thuy-dv070-11.jpg"},
            {name: "Bình sứ hồ lô", price: "9.900.000", img: "https://www.ladora.com.vn/wp-content/uploads/2024/10/ho-lo-phong-thuy-dv070-11.jpg"},
            {name: "Bình sứ hồ lô", price: "9.900.000", img: "https://www.ladora.com.vn/wp-content/uploads/2024/10/ho-lo-phong-thuy-dv070-11.jpg"},
        ];


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
    /* trag trí */
    renderProducts("discount-product-list", "discount-product-template", discountProducts);
    renderProducts("lucky-vase-product-list", "lucky-vase-product-template", luckyVaseProducts);
    renderProducts("tyba-product-list", "tyba-product-template", tybaProducts);
    renderProducts( "tuonggom-product-list", "tuonggom-product-template", tuonggomProducts);
    renderProducts("holo-product-list", "holo-product-template", holoProducts);
});


