-- объявление функции ([a]-список)--
reverselist:: [a] -> [a]
--наша функция будет равна другим функциям innerrev, которые будут
--возвращать разные значения в зависимости от аргумента
reverselist l = innerrev l []
    where
--Объявляем innerrrev (функция принимает 2 списка)
        innerrev:: [a] -> [a] -> [a]
--Если 1й список пустой -> возвращаем второй
        innerrev [] l = l
-- Если в списке можно выделить голову и хвост добавляем голову в l и запускаем innerrev для хвоста
        innerrev (x:xs) l = innerrev xs (x:l)
--https://www.testwizard.ru/test.php?id=84020
main =do
print (reverselist [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])