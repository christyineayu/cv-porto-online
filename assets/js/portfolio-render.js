// Membuat kartu portofolio di index.html (pengganti loop PHP + MySQL)
(function () {
  var box = document.querySelector('.portofolio-container');
  if (!box || !window.PORTFOLIO) return;
  var esc = function (t) {
    return String(t == null ? '' : t).replace(/[&<>"']/g, function (c) {
      return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c];
    });
  };
  var img = function (f) { return 'assets/img/portfolio/' + encodeURIComponent(f); };
  box.innerHTML = window.PORTFOLIO.map(function (p) {
    return '<div class="col-lg-4 col-md-6 portofolio-item ' + esc(p.filter) + '">' +
      '<div class="portofolio-wrap">' +
        '<a href="' + img(p.cover) + '" data-gallery="portfolioGallery" class="portofolio-lightbox" title="' + esc(p.judul) + '">' +
          '<div class="portofolio-img"><img src="' + img(p.cover) + '" class="img-fluid" alt="' + esc(p.judul) + '"></div>' +
        '</a>' +
        '<div class="portofolio-content"><div class="row">' +
          '<div class="col-12 mb-15"><h2 class="w-title">' + esc(p.judul) + '</h2>' +
            '<div class="w-more"><span class="w-ctegory">' + esc(p.klien) + '</span> / <span class="w-date">' + esc(p.tahun) + '</span></div></div>' +
          '<div class="col-12"><div class="detail-div">' +
            '<a href="details.html?id=' + encodeURIComponent(p.id) + '"><button type="button" class="btn btn-primary">Detail</button></a>' +
          '</div></div>' +
        '</div></div>' +
      '</div></div>';
  }).join('');
})();