/**
* 语法文件通常以grammar开头
* grammar后面的语法名必须和文件名一致
*/
grammar ArrayInit;

/**
* 一条名为init的规则，匹配一堆花括号中的逗号分隔的value
*/
init : '{' value (',' value)* '}';
/**
* 一个value可以是嵌套的花括号结构，也可以是一个简单的整数
*/
value : init
    | INT
    ;
/**
 * 语法解析器的规则必须以小写字母开头，词法分析器的规则必须以大写字母开头
 */
INT : [0-9]+ ; //定义词法符号INIT,表示一个或多个数字
WS : [\t\r\n]+ -> skip ; //定义词法符号WS,表示空白符号