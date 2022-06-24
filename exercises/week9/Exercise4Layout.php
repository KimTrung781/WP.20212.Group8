<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<title>Exercise04</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<style type="text/css">
</style>

<script type="text/javascript">
var ajaxRequest;

function getXMLHttpRequest()
/*   This function attempts to get an Ajax request object by trying
     a few different methods for different browsers.  */
{
   var request, err;
   try {
          request = new XMLHttpRequest();   // Firefox, Safari, Opera, etc.
       }
   catch(err) {
       try {             //  first attempt for Internet Explorer
          request = new ActiveXObject("MSXML2.XMLHttp.6.0");
           }
       catch (err) {
                      try {    //  second attempt for Internet Explorer
                      request = new ActiveXObject("MSXML2.XMLHttp.3.0");
                          }
                      catch (err) {
                           request = false;  // oops, can.t create one!
                                  }
                   }
              }
   return request;
}

function ajaxResponse()  //This gets called when the readyState changes.
{
   if (ajaxRequest.readyState != 4)  //  check to see if we're done
      {  return;  }
   else {
     if (ajaxRequest.status == 200) //  check to see if successful
          {   displaySearchResults();   }
     else {
       alert("Request failed: " + ajaxRequest.statusText);
          }
     }
}

var t;  //  public variable for the timeout

function startSearch()
{
   if (t) window.clearTimeout(t);
   t = window.setTimeout("liveSearch()",200);

}

function liveSearch()
{
   ajaxRequest = getXMLHttpRequest();
   if (!ajaxRequest)  alert("Request error!");
   var myURL = "Exercise4BackEnd.php";
   var query = document.getElementById("searchstring").value;
   myURL = myURL + "?query=" + query;
   ajaxRequest.onreadystatechange = ajaxResponse;
   ajaxRequest.open("GET", myURL);
   ajaxRequest.send(null);
}

function displaySearchResults()
//  This function will display the search results, and is the
//  callback function for the Ajax request.
{
   var i, n, li, t;
   var ul = document.getElementById("list");
   var div = document.getElementById("results");

   div.removeChild(ul);  //  delete the old search results
   ul = document.createElement("UL");  //  create a new list container
   ul.id="list";

   //  get the results from the search request object
   var names=ajaxRequest.responseXML.getElementsByTagName("name");
   for (i = 0; i < names.length; i++)
       {
         li = document.createElement("LI");
         n = names[i].firstChild.nodeValue;
         t = document.createTextNode(n);
         li.appendChild(t);
         ul.appendChild(li);
       }
   if (names.length == 0)  // if no results are found, say so
      {
         li = document.createElement("LI");
         li.appendChild(document.createTextNode("No results."));
         ul.appendChild(li);
      }
   div.appendChild(ul);  // display the new list

}
</script>
</head>

<body>
<h1>Exercise 04</h1>
<p>
Search for: <input type="text" id="searchstring" />
</p>
<div id="results">
<ul id="list">
</ul>
</div>

<script type="text/javascript">
var obj=document.getElementById("searchstring");
obj.onkeydown = startSearch;
</script>

</body>
</html>
