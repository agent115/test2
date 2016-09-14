<?php
namespace app\models;

use yii\base\Models;

class Arrcom
{

    function map_tree($dataset)
    {
        $tree = array();

        foreach ($dataset as $id => &$node) {
            if (!$node['parent']) {
                $tree[$id] = &$node;
            } else {
                $dataset[$node['parent']]['childs'][$id] = &$node;
            }
        }

        return $tree;
    }
}

?>