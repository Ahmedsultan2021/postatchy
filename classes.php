<?php
class user
{

    public $id;
    public $name;
    public $email;
    public $created_at;
    public $updated_at;
    protected $password;
    public $role = 'user';

    //comment 
    public function __construct($id, $name, $email, $password, $created_at, $updated_at)
    {
        $this->id = $id;
        $this->name = $name;
        $this->email = $email;
        $this->password = $password;
        $this->created_at = $created_at;
        $this->updated_at = $updated_at;
    }




    static function login($email, $password)
    {
        $user = null;

        $qry = "SELECT * FROM users WHERE email='$email' AND password='$password'";
        require_once("congig.php");
        $cn = mysqli_connect(DB_HOST, DB_USER_NAME, DB_USER_PASSWORD, DB_NAME);
        //  var_dump($cn);
        $rslt = mysqli_query($cn, $qry);
        //  var_dump($rslt);
        if ($arr = mysqli_fetch_assoc($rslt)) {

            switch ($arr["role"]) {
                case 'user':
                    $user = new user($arr["id"], $arr["name"], $arr["email"], $arr["password"], $arr["created_at"], $arr["updated_at"]);
                    break;
                case 'admin':
                    $user = new admin($arr["id"], $arr["name"], $arr["email"], $arr["password"], $arr["created_at"], $arr["updated_at"]);
                    break;
            }
        }
        mysqli_close($cn);
        return $user;
    }


    function GetPass()
    {
        return $this->password;
    }


    static  function signup($name, $email, $password)
    {
        $qry = "insert into users(name,email,password) values('$name','$email','$password')";
        require_once("congig.php");
        $cn = mysqli_connect(DB_HOST, DB_USER_NAME, DB_USER_PASSWORD, DB_NAME);
        //  var_dump($cn);
        $rslt = mysqli_query($cn, $qry);
        //  var_dump($rslt);
        return $rslt;
    }

    function addPost($content, $image, $user_id)
    {
        $qry = "insert into posts(image,content,user_id) values('$image','$content',$user_id)";
        require_once("congig.php");
        $cn = mysqli_connect(DB_HOST, DB_USER_NAME, DB_USER_PASSWORD, DB_NAME);
        //  var_dump($cn);
        $rslt = mysqli_query($cn, $qry);
        //  var_dump($rslt);
        return $rslt;
    }
    function show_all_Post()
    {

        $qry = "SELECT content,image,posts.created_at,posts.id,name FROM posts join users on(posts.user_id = users.id) ORDER BY created_at DESC LIMIT 10 ";
        require_once("congig.php");
        $cn = mysqli_connect(DB_HOST, DB_USER_NAME, DB_USER_PASSWORD, DB_NAME);
        //  var_dump($cn);
        //$result=mysql_query($qry)oldie(mysql_error());
        $rslt = mysqli_query($cn, $qry);
        var_dump($rslt);
        $data = mysqli_fetch_all($rslt);

        mysqli_close($cn);
        return $data;
    }


    function updatePost()
    {
    }
    function deletePost()
    {
    }
    function show_my_Posts($id)
    {

        $qry = "SELECT * FROM posts LIMIT 10 ORDER BY created_at DESC where id = $id ";
        require_once("congig.php");
        $cn = mysqli_connect(DB_HOST, DB_USER_NAME, DB_USER_PASSWORD, DB_NAME);
        //  var_dump($cn);
        $rslt = mysqli_query($cn, $qry);
        //  var_dump($rslt);
        $data = mysqli_fetch_assoc($rslt);

        mysqli_close($cn);
        return $data;
    }
}
class admin extends user
{
    public $role = 'admin';
    //comment

    function showAllAccount()
    {
    }
    function deleteAccount()
    {
    }
}
