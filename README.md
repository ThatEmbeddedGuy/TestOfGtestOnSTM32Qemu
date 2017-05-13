# TestOfGtestOnSTM32Qemu 
## EN 
### What is this
Eclipse based project, with ported on arm cortex m4 google testing framework, so tests can be runned on qemu with same ASM listing and behabour as in target platform
### What do you need to get this
+ Install eclipse for c/c++ developers here  https://eclipse.org
+ Istall and configure arm-none-eabi, gnu arm eclipse plugin, buildtools e.t.c. here http://gnuarmeclipse.github.io
+ Instal and configure Qemu for eclipse and cortex m3/m4 series http://gnuarmeclipse.github.io/qemu
+ Import existing project into eclipse workspace with File -> Import
+ Configure Qemu debug profile for imported project (all alreeady will be configured by double clicking on GDB QEMU Debugging, screenshot is [here](https://github.com/ThatEmbeddedGuy/TestOfGtestOnSTM32Qemu/blob/master/screen/onfigure.png))
+ Run debug and get all Gtest standard output through gdb console
### Why debug folder is here?
+ elf file is here for qemu automatic configuration without building
+ object and automatically generated make files here to import project properly, and avoid error in first build (because of empty makefile)
+ other here just to avoid selection in gitignore one day beofre lecture

## RU
### Что это
Проект для eclipse с портированным на arm cortex m4 google testing framework, чтобы тесты могли быть запущенны с помощью qemu и в тест кейсах ни асм листинг, ни поведение не было отлично от платформы для которой проводятся тесты

### Что нужно сделать, чтобы все заработало
+ Установить еклипс отсюда  https://eclipse.org
+ Установить и настроить arm-none-eabi, gnu arm eclipse плагин, buildtools и прочее отсюда http://gnuarmeclipse.github.io
+ Установить и настроить Qemu  для eclipse и cortex m3/m4 отсюда http://gnuarmeclipse.github.io/qemu
+ Импортировать текущий проект в свой воркспейс с помощью File -> Import
+ Настроить дебаг профить Qemu для только что импортированного проекта (все должно быть  уже сконфигурированно при двойном клике на GDB QEMU Debugging, а если нет то скриншоты с настройками [здесь](https://github.com/ThatEmbeddedGuy/TestOfGtestOnSTM32Qemu/blob/master/screen/onfigure.png))
+ Запустить дебаг и увидеть, как в консольке gdb будет отображаться стандартный вывод гуглотеста
### А что здесь делает папка Debug?
+ elf файл здесь, чтобы qemu при даблклике автоматически понял что ему нужно дебажить
+ обьектные файлы и мейкфайлы здесь, чтобы ghjtrn автоматически быстро подсосался и не было ошибки (об отсутствии мейкфайлов) во время первой сборки
+ остальные файлы здесь, чтобы не ковыряться с гитигнором в последний день перед докладом
