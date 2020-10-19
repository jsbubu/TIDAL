<?php
class product{
    private $id;
    private $name;
    private $description;
    private $price;
    private $image;
    private $img_description;

    public function __construct($name, $description, $price, $image, $img_description)
    {
        $this->name = $name;
        $this->description = $description;
        $this->price = $price;
        $this->image = $image;
        $this->img_description = $img_description;
    }

}
?>