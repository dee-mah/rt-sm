1. https://github.com/dee-mah/rt-sm/commit/6ba621273f85a985c8fdffe153a5a76b1eb13011
На clickhouse.cloud создана база данных SM.
На основании файла sm_test_data создана таблица smlogs (Create smlogs.sql).
Данные из файла загружены в таблицу при помощи импорта Dbeaver.
Дата и время в формате Unix. Колонка parameters содержит ACCOUNT_NUMBER, CALLER_ID, COMMUNICATION_THEME, COMMUNICATION_DETAIL, COMMUNICATION_RESULT в формате JSON. Первый столбец без заголовка.

2. https://github.com/dee-mah/rt-sm/commit/7c25b73814b81b993b56215fd340cccee3a7ba15
Создана таблица smboard (create smboard.sql). В нее импортированы данные таблицы smlogs (INSERT to smboard.sql). 
Дата и время преобразованы в формат DateTime.
Добавлены колонки ACCOUNT_NUMBER, CALLER_ID, COMMUNICATION_THEME, COMMUNICATION_DETAIL, COMMUNICATION_RESULT. Данные для них извлечены из столбца parameters при помощи функции JSONExtractString.

3. https://github.com/dee-mah/rt-sm/commit/5f94ff493093bbb0286a94f3c99ebd40265d28f4
Написан DAG для выполнения ежечасного преобразования и загрузки данных из таблицы smlogs в таблицу smboard (ETL.ipynb).

Excel-файл: [smboard.xlsx](https://github.com/dee-mah/rt-sm/files/14976890/smboard.xlsx)
