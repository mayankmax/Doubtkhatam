<?php
/* [SEARCH FOR USERS] */
if (isset($_POST['search'])) {
  require "3-search.php";
}

/* [DISPLAY HTML] */ ?>
<!DOCTYPE html>
<html>
  <body>
    <!-- [SEARCH FORM] -->
  <center>  <form method="post" > 
      <h1>
        SEARCH 
      </h1>
      <input type="text" name="search" required/>
      <input type="submit" value="Search"/>
    </form> </center>

    <!-- [SEARCH RESULTS] -->
   <center><h1 style="margin-top:100px;"><?php
    if (isset($_POST['search'])) {
      if (count($results) > 0) {
        foreach ($results as $r) {
          printf("<div>%s - %s</div>", $r['question'],$r['answer']);
        }
      } else {
        echo "No results found";
      }
    }
    ?></h1></center>
  </body>
</html>