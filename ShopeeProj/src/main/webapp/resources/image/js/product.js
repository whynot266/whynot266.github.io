$(document).ready(function () {
    $(".sub-image-child .wrapper-sub-image").mouseover(function () {
        let picture_src = $(this).find('img').attr('src');
        $('.main-image-container img').attr('src', picture_src);
        $('.wrapper-sub-image').find('div').removeClass('active-image');
        $(this).find('div').addClass('active-image');
    })
    let i = 1;
    $(document).ready(function () {
        $('.control-quantity .quantity-input').attr('value', i);
        if ($('.control-quantity .quantity-input').attr('value') == '1')
        $($('.quantity .control-quantity .decrease').attr('disabled', true))
    })
    $('.quantity .control-quantity button').click(function () {
        if ($(this).hasClass('increase')) {
            i++;
            $('.control-quantity .quantity-input').attr('value', i);
        }
        if ($(this).hasClass('decrease')) {
            i--;
            $('.control-quantity .quantity-input').attr('value', i);
        }
        if ($('.control-quantity .quantity-input').attr('value') == '1')
            $($('.quantity .control-quantity .decrease').attr('disabled', true))
        else
            $($('.quantity .control-quantity .decrease').attr('disabled', false))
    })
    $('.size .size-product .product-variation').click(function () {
        if ($(this).find('div').attr('class') != 'tick') {
            let tick = document.createElement('div');
            let tickCss = document.createElement('div');
            $('div').remove('.tick');
            $(tick).addClass('tick');
            $(tick).css({
                "width": "0.9375rem",
                "height": "0.9375rem",
                "position": "absolute",
                "overflow": "hidden",
                "right": "0",
                "bottom": "0",
                "background-color": "red"
            });
            $(this).append(tick);
        }
        else
            $('div').remove('.tick');
    })
})