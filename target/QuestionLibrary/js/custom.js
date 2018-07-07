//当点击跳转链接后，回到页面顶部位置
$("#back_to_top").click(function () {
    if ($('html').scrollTop()) {
        $('html').animate({ scrollTop: 0 }, 1000);
        return false;
    }
    $('body').animate({ scrollTop: 0 }, 1000);
    return false;
});

