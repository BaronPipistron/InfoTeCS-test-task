# InfoTeCS C++ Developer Test Task

## Information
Реализация задания состоит из двух программ. Они находятся в соответствующих директориях `1_Programm` и `2_Programm` соответственно. В каждой из директорий находятся папки `include` - содержит в себе заголовочные файлы; `src` - содержит в себе реализацию классов и функций, описанных в заголовочных файлах; файл `run.cpp` - точка входа в соответствующую программу; `CMakeLists.txt` и `Makefile` - файлы для сборки каждой программы по отдельности. В корневой директории проекта находится `Makefile` - для удобной сборки и запуска сразу двух программ одновременно, а также `README.md` с информацией о проекте.

Реализация задания использует только возможности языка C++ стандарта 23, стандартные библиотеки и функции ОС Linux. 

При запуске обеих программ одновременно (см. раздел `Run`) открывается еще один побочный терминал, в котором будет выводится информации о работе Программы №2, в то время как информация о работе Программы №1 выводится в первоначально открытый (главый) терминал.

Ввод считывает только Программа №1 (главный терминал), Программа №2 (побочный терминал) только выводит данные. 

Для прекращения работы обеих программ необходимо передать на ввод значение `q`. Для прекращения работы только Программы №1 необходимо передать на ввод значение `q1`. Для прекращения работы только Программы №2 необходимо передать на ввод значение `q2`

## Compile
Для компиляции сразу обеих программ необходимо, находясь в корневой директории проекта, использовать команду
```bash
make build
```

Для компиляции только Программы №1
```bash
# находимся в корневой директории проекта

cd 1_Programm
make build
```

Для компиляции только Программы №2
```bash
# находимся в корневой директории проекта

cd 2_Programm
make build
```

## Run
Для запуска сразу обеих программ необходимо, находясь в корневой директории проекта, использовать команду
```bash
make run
```

Для запуска только Программы №1
```bash
# находимся в корневой директории проекта

cd 1_Programm
make run
```

Для запуска только Программы №2. Важно учесть, что при таком запуске новое окно терминала не откроется и Программа №2 будет работать в текущем терминале (из которого ее запустили). 
```bash
# находимся в корневой директории проекта

cd 2_Programm
make run
```

## Clean
Для очистки директории `build` сразу обеих программ необходимо, находясь в корневой директории проекта, использовать команду
```bash
make clean
```

Для очистки директории `build` только Программы №1
```bash
# находимся в корневой директории проекта

cd 1_Programm
make clean
```

Для очистки директории `build` только Программы №2
```bash
# находимся в корневой директории проекта

cd 2_Programm
make clean
```