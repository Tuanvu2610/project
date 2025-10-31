
// Nạp nội dung từ header.html
fetch("common/header.html")
  .then(res => res.text())
  .then(data => document.getElementById("header-placeholder").innerHTML = data);

// Nạp nội dung từ footer.html
fetch("common/footer.html")
  .then(res => res.text())
  .then(data => document.getElementById("footer-placeholder").innerHTML = data);


