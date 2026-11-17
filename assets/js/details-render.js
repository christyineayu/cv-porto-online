// Membuat halaman detail dari ?id=P1 (pengganti details.php?id_foto=)
(function () {
  var root = document.getElementById('details-root');
  if (!root || !window.PORTFOLIO) return;
  var id = new URLSearchParams(location.search).get('id');
  var p = window.PORTFOLIO.filter(function (x) { return x.id === id; })[0];
  var esc = function (t) {
    return String(t == null ? '' : t).replace(/[&<>"']/g, function (c) {
      return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c];
    });
  };
  if (!p) {
    root.innerHTML = '<section class="portofolio-details"><div class="container"><p>Proyek tidak ditemukan. <a href="index.html#portofolio">Kembali</a></p></div></section>';
    return;
  }
  document.title = p.judul + ' - Portofolio Christine Ayu W';
  var slides = p.images.map(function (f) {
    return '<div class="swiper-slide"><div class="cardPortofolio"><img src="assets/img/portfolio/' + encodeURIComponent(f) + '" alt=""></div></div>';
  }).join('');
  root.innerHTML =
    '<section id="portofolio-details" class="portfolio-details"><div class="container"><div class="row gy-4">' +
      '<div class="col-lg-8"><div class="portofolio-details-slider swiper">' +
        '<div class="swiper-wrapper align-items-center">' + slides + '</div><div class="swiper-pagination"></div>' +
      '</div></div>' +
      '<div class="col-lg-4">' +
        '<div class="portfolio-info portfolio-tagHr"><h2>Project information</h2><hr><ul>' +
          '<li><strong>Kategori</strong>: ' + esc(p.kategori) + '</li>' +
          '<li><strong>Klien</strong>: ' + esc(p.klien) + '</li>' +
          '<li><strong>Proyek Tahun</strong>: ' + esc(p.tahun) + '</li></ul></div>' +
        '<div class="portfolio-description portfolio-tagHr"><h3>' + esc(p.judul) + '</h3><hr><p>' + esc(p.ket) + '</p></div>' +
      '</div></div></div></section>';
})();
