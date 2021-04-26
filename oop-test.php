<?php

class UserGenerator {
    public $name;

    function __construct() {
        $names = array('Вася', 'Петя', 'Ира', 'Света');

        $random_names_num = mt_rand(0, count($names) - 1);

        $name = $names[$random_names_num];

        $this->name = $name;
    }

    /*function generate_name() {
        $names = array('Вася', 'Петя', 'Ира', 'Света');

        $random_names_num = mt_rand(0, count($names) - 1);

        $name = $names[$random_names_num];

        return $name;
    }*/

    function generate_age() {
        $age = mt_rand(20, 50);

        return $age;
    }

    function generate_city() {
        $cities = array('Киев', 'Львов', 'Харьков', 'Одесса');

        $random_city_num = mt_rand(0, count($cities) - 1);

        $city = $cities[$random_city_num];

        return $city;
    }

    function generate() {
        $name = $this->name;
        $age = $this->generate_age();
        $city = $this->generate_city();

        $result = 'Привет, меня зовут '. $name .', мне '. $age .' лет, я из '. $city;

        return $result;
    }
}



$user_generagor = new UserGenerator();

echo $user_generagor->generate() .'<br>';
echo $user_generagor->generate() .'<br>';
echo $user_generagor->generate() .'<br>';