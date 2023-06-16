<?php
class client extends connect{
    use getInstance;
    function __construct(private $Identification = 12, public $Full_Name = 1, public $Email =1, private $Address= 1, private $Phone=1){
        parent::__construct();
        print_r($Full_Name);
    }

    
}
?>  