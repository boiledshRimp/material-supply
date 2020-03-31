$(function() {

  $('.multiple').slick({
    autoplay: false, //自動再生
    infinite: true, //スライドのループ有効化
    dots: true, //ドットのナビゲーションを表示
    slidesToShow: 4, //表示するスライドの数
    slidesToScroll: 4, //スクロールで切り替わるスライドの数
    responsive: [{
      breakpoint: 768, //ブレークポイントが768px
      settings: {
        slidesToShow: 3, //表示するスライドの数
        slidesToScroll: 3, //スクロールで切り替わるスライドの数
      }
    }, {
      breakpoint: 480, //ブレークポイントが480px
      settings: {
        slidesToShow: 2, //表示するスライドの数
        slidesToScroll: 2, //スクロールで切り替わるスライドの数
      }
    }]
  });
	
});