<?php

class User{
 
    public $id;
    public $username;
    
    public $items;
    public $blueprints;
    
    public function getItems(){
        $id = $this->id;        
        $q = mysql_query("SELECT c.description, i.unique_description, c.weight, i.durability, i.unique_value 
        FROM item i, component c 
        WHERE i.user_id = '$id' 
        AND i.component_id = c.id ");
        
        while($r = mysql_fetch_row($q)){
            echo "item: ".$r[0]." [".$r[1]."] w = ".$r[2]."<br>";
        }
        
    }
    
    
    
}


?>