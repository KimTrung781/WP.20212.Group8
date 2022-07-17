<html>

<head>
    <title>Home Page</title>
</head>

<body>
    <div class="home">
     
        <?php echo '<image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'shipping.png"' . '" alt="' . '"/ >'; ?>
        <?php echo '<image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'banner.jpeg"' . '" alt="' . '"/ >'; ?>
        <h1 style="color:#21618C ;font-size:70px;font-weight:bold;text-align:center;">#MOISale</h1>
        <?php echo '<a href="?url=category/view/top/coat"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'menbanner.jpg"' . '" alt="' . '"/ ></a>'; ?>
        <?php echo '<a href="?url=category/view/shoes"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'banner-shoes.jpeg"' . '" alt="' . '"/ ></a>'; ?>
        <h1 style="color:#21618C ;font-size:70px;font-weight:bold;text-align:center;">#MOIProducts</h1>
        <table id="home-table">
            <tr>
                <td><?php echo '<a href="?url=category/view/top/t-shirt"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 't-shirt.jpeg"' . '" alt="' . '"/ ></a>'; ?></td>
                <td class=" td-padding">
                    <h1 style="color:#2E86C1;text-align:center;">2022 New T-shirt Collection</h1>
                    <h2 style="color:black;font-weight:bold;text-align:center;" >Active and Creative</h2>
                </td>
            </tr>
            <tr>
                <td class="td-right td-padding">
                    <h1 style="color:#2E86C1;text-align:center;">Straight-Fit Jeans</h1>
                    <h2 style="color:black;font-weight:bold;text-align:center;">Elevate your look with the latest MOI's jeans</h2>
                </td>
                <td><?php echo '<a href="?url=category/view/bottom/jeans"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'jeans.jpeg"' . '" alt="' . '"/ ></a>'; ?></td>
            </tr>
            <tr>
                <td><?php echo '<a href="?url=category/view/shoes"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'shoes3.jpeg"' . '" alt="' . '"/ ></a>'; ?></td>
                <td class=" td-padding">
                    <h1 style="color:#2E86C1;text-align:center;">Unifactor Running Shoes</h1>
                    <h2 style="color:black;font-weight:bold;text-align:center;">All styles and colours available in the online store</h2>
                </td>
            </tr>
            <tr>
                <td class="td-right td-padding">
                    <h1 style="color:#2E86C1;text-align:center;">2022 Summer Collection</h1>
                    <h2 style="color:black;font-weight:bold;text-align:center;">Available online and in stores until 22/7/2022</h2>
                </td>
                <td><?php echo '<a href="?url=category/view/top/coat"><image class="img-max-width" src="' . PATH_URL_IMG_HOME . 'coat.png"' . '" alt="' . '"/ ></a>'; ?></td>
            </tr>
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

    h3 {
        font-style: italic;
        font-weight: normal;
    }

    .td-right {
        text-align: right;
    }

    .td-padding {
        padding: 0 20px;

    }
</style>