<?php
/* filter by TV of date format */ 
/* &filters=`tvdate:mytv:=:2017-09-28` */
include_once ('tv.filter.php');
/**
 * Created by PhpStorm.
 * User: Pathologic
 * Date: 28.09.17
 * Time: 13:09
 */
class tvdate_DL_filter extends tv_DL_filter
{
    /**
     * Конструктор условий для WHERE секции
     *
     * @param string $table_alias алиас таблицы
     * @param string $field поле для фильтрации
     * @param string $operator оператор сопоставления
     * @param string $value искомое значение
     * @return string
     */
    protected function build_sql_where($table_alias, $field, $operator, $value)
    {
        $this->DocLister->debug->debug('Build SQL query for filters: ' . $this->DocLister->debug->dumpData(func_get_args()),
            'buildQuery', 2);
        $field= sqlHelper::tildeField($field, $table_alias);
        $value = $this->modx->db->escape($value);
        $output = "STR_TO_DATE({$field},'%d-%m-%Y')";
        switch ($operator) {
            case '=':
            case 'eq':
            case 'is':
                $output .= " = '{$value}'";
                break;
            case '!=':
            case 'no':
            case 'isnot':
                $output .= " != '{$value}'";
                break;
            case '>':
            case 'gt':
                $output .= " > '{$value}'";
                break;
            case '<':
            case 'lt':
                $output .= " < '{$value}'";
                break;
            case '<=':
            case 'elt':
                $output .= " <= '{$value}'";
                break;
            case '>=':
            case 'egt':
                $output .= " >= '{$value}'";;
                break;
            default:
                $output = '';
        }

        $this->DocLister->debug->debugEnd("buildQuery");

        return $output;
    }

}
