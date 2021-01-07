<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>查询数据库</title>
</head>
<body>
    <h3>select * from news</h3>
    <?php
        //1、连接数据库
        $link=@mysqli_connect('localhost','root','123456','study') or die('错误信息：'.mysqli_connect_error());
        //2、设置字符编码
        mysqli_query($link,'set names utf8');
        //3、执行查询语句
        $rs=mysqli_query($link,'select * from news');
        
        var_dump($rs);
        
        $list=mysqli_fetch_all($rs,MYSQLI_BOTH);		//匹配成关联、索引数组

        echo '<pre>';
        print_r($list);

        //5、销毁结果集
        mysqli_free_result($rs);

        //6、关闭连接
        mysqli_close($link);
    ?>
</body>
</html>