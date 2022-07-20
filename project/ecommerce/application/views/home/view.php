<html style="background-color: aliceblue;">

<head>
    <title>Home Page</title>
</head>

<body>
    <div class="home">
     
        <?php echo '<image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'summer22.jpg"' . '" alt="' . '"/ >'; ?>
        <h1 style="color:#21618C ;font-size:70px;font-weight:bold;text-align:center;">MOISale</h1>
        <h1 style="color:#21618C ;font-size:70px;font-weight:bold;text-align:center;">MOIProducts</h1>
        <table id="home-table">
            <tr>
                <tr>
                <?php echo '<a href="?url=category/view/top/shirt"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'shirt-sale.png"' . '" alt="' . '"/ ></a>'; ?>
                </tr>
                <tr>
                <?php echo '<a href="?url=category/view/top/t-shirt"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 't-shirt-sale.png"' . '" alt="' . '"/ ></a>'; ?>
                </tr>
                <tr>
                <?php echo '<a href="?url=category/view/top/coat"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'coat-sale.png"' . '" alt="' . '"/ ></a>'; ?>
                </tr>
            </tr>
            <td>
                <tr>
                <?php echo '<a href="?url=category/view/bottom/jeans"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'jean-sale.png"' . '" alt="' . '"/ ></a>'; ?>
                </tr>
                <tr>
                <?php echo '<a href="?url=category/view/bottom/short"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'short-sale.png"' . '" alt="' . '"/ ></a>'; ?>
                </tr>
            </td>
            <td>
                <tr>
                <?php echo '<a href="?url=category/view/shoes"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'shoe-banner.png"' . '" alt="' . ' "/ ></a>'; ?>
                </tr>
            </td>
        </table>
    </div>
</body>

</html>


<style>
    .home {
        text-align: center;
    }

    .img-max-width {
        max-width: 100%;
    }

    h1 {
        margin: 50px;
        font-style: italic;
        color: #1d1182c9;
        font-size: 40px;
    }
</style>