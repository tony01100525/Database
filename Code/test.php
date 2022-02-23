<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>遊樂園</title>
  </head>

  <body>
    <?php
    //與資料庫連接
    $link = mysqli_connect('localhost','root','tony1010525','test');
    if ( !$link ) {
       echo "MySQL資料庫連接錯誤!<br/>";
       exit();
    }
    else {
       echo "MySQL資料庫test連接成功!<br/>指令如下:<br/>".$_GET["query"];
       $result = mysqli_query($link,$_GET["query"]);
       //var_dump($result) ;
       if($result=="True"){

         echo "修改成功";
       }else if($result=="FALSE"){

         echo "修改失敗";
       }else{

         echo "<table border = '10' align='center'><tr>";
         while ($meta=mysqli_fetch_field($result)){
           echo "<td bgcolor=blue><font size=6 color=white face=monospace> $meta->name </font></td>";
         }
         echo "</tr>";
         while($row=mysqli_fetch_row($result)){
           echo "<tr>";
           for($j=0;$j<mysqli_num_fields($result);$j++){
             echo "<td><font size=6 face=monospace>$row[$j]</font></td>";
           }
           echo "</tr>";
         }
         echo "</table>";
       }
    }
    mysqli_close($link);  // 關閉資料庫連接
    ?>
  </body>
</html>
