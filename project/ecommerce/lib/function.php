<?php
function show_404()
{
    header('HTTP/1.1 Not Found 404', true, 404);
    require(VIEWPATH . 'base/404.php');
    exit();
}

function setReporting()
{
    if (DEVELOPMENT_ENVIRONMENT == true) {
        ini_set('display_errors', 'On');
    } else {
        ini_set('display_errors', 'Off');
        ini_set('log_errors', 'On');
    }
}

function redirect($controller, $action)
{
    // header("location:/?url=" . $controller . '/' . $action, true, 302);
    header("location:/ecommerce/?url=" . $controller . '/' . $action, true, 302);
    exit();
}

function hash_password($str)
{
    return md5($str);
}

function compare_password($pass, $hash)
{
    return hash_equals($pass, $hash);
}

function autoloader($className)
{
    if (file_exists(BASEPATH . '/lib/' . strtolower($className) . '.class.php')) {
        require_once(BASEPATH . '/lib/' . strtolower($className) . '.class.php');
    } elseif (file_exists(CONTROLPATH . $className . '.php')) {
        require_once(CONTROLPATH . $className . '.php');
    } else if (file_exists(MODELPATH . $className . '.model.php')) {
        require_once(MODELPATH . $className . '.model.php');
    } else {
        /* Error Generation Code Here */
    }
}
function base64UrlEncode($text)
{
    return str_replace(
        ['+', '/', '='],
        ['-', '_', ''],
        base64_encode($text)
    );
}

function htmlsan($htmlsanitize)
{
    return htmlspecialchars($htmlsanitize, ENT_QUOTES, 'UTF-8');
}
// $url = Path route
// ?url=cart/view/1/2
// cart -> controller
// view -> action
// after -> paramlist
function callHook()
{
    global $url, $api;
    $urlArray = array();
    $urlArray = explode("/", $url);
    $controllerName = "Home";
    $controller = $urlArray[0];
    array_shift($urlArray);
    $action = $urlArray[0];
    array_shift($urlArray);
    $queryString = $urlArray;

    if (!empty($controllerName)) {
        $controllerName = $controller;
    }
    $controller = ucfirst($controller);
    $model = $controller; //Cart
    $controller .= 'Controller'; //CartController
    $dispatch = new $controller($model, $controllerName, $action, $api);
    if ((int)method_exists($controller, $action)) {
        call_user_func_array(array($dispatch, $action), $queryString);
    }


}

spl_autoload_register('autoloader');

setReporting();
callHook();
