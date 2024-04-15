1. [Коммит 1](https://github.com/dee-mah/rt-sm/commit/6ba621273f85a985c8fdffe153a5a76b1eb13011)
 
На clickhouse.cloud создана база данных SM.  
На основании файла sm_test_data создана таблица smlogs [Create smlogs.sql](https://github.com/dee-mah/rt-sm/commit/6ba621273f85a985c8fdffe153a5a76b1eb13011#diff-c16e1ceb191a32b845647992ebbe99a147bb980a719bb2c4eda8bbdb8e0d945d).  
Данные из файла загружены в таблицу при помощи импорта Dbeaver.  
Дата и время в формате Unix. Колонка parameters содержит ACCOUNT_NUMBER, CALLER_ID, COMMUNICATION_THEME, COMMUNICATION_DETAIL, COMMUNICATION_RESULT в формате JSON. Первый столбец без заголовка.

2. [Коммит 2](https://github.com/dee-mah/rt-sm/commit/7c25b73814b81b993b56215fd340cccee3a7ba15)

Создана таблица smboard [create smboard.sql](https://github.com/dee-mah/rt-sm/commit/7c25b73814b81b993b56215fd340cccee3a7ba15#diff-22177dd8a556186b05b53141b88c7a5bc0ddf2100be0b565fae33c5da9fbeaac). В нее импортированы данные таблицы smlogs [INSERT to smboard.sql](https://github.com/dee-mah/rt-sm/commit/7c25b73814b81b993b56215fd340cccee3a7ba15#diff-ff8f851d354f74dfa1fe50ee308d26a67e4c1f4c87ad6072ffd2de3b039efd9a).   
Дата и время преобразованы в формат DateTime.  
Добавлены колонки ACCOUNT_NUMBER, CALLER_ID, COMMUNICATION_THEME, COMMUNICATION_DETAIL, COMMUNICATION_RESULT. Данные для них извлечены из столбца parameters при помощи функции JSONExtractString.

3. [Коммит 3](https://github.com/dee-mah/rt-sm/commit/5f94ff493093bbb0286a94f3c99ebd40265d28f4)

Написан DAG для выполнения ежечасного преобразования и загрузки данных из таблицы smlogs в таблицу smboard [ETL.ipynb](https://github.com/dee-mah/rt-sm/blob/5f94ff493093bbb0286a94f3c99ebd40265d28f4/ETL.ipynb).

Excel-файл: [smboard.xlsx](https://github.com/dee-mah/rt-sm/files/14976890/smboard.xlsx)
