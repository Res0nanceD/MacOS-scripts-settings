# MacOS-scripts-settings

## Как добавить искрипты в исполнение:

```
brew install pngpaste
```

Открой Automator.

Создай Quick Action (Быстрое действие).

Выше, где написано:

"Процесс получает" → выбери: нет входных данных

в → выбери: Finder.app

https://files.oaiusercontent.com/file-6gHaRvw1oTeuAAmBbtex6X?se=2025-04-09T15%3A45%3A35Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D299%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3Dimage.png&sig=8kBpHAFUXe5Xjo279hS4evHUljUQeiFQ2M7cP35aw6I%3D![image](https://github.com/user-attachments/assets/835a9817-6c66-4e19-ae25-b9249eff88f0)

В левом списке выбери "Утилиты" (что уже открыто у тебя).
Найди и перетащи действие "Запустить Shell-скрипт" (Run Shell Script или Run Apple Script зависит от скрипта) в правую часть (где написано «Перетащите сюда действия...»).

Нажми ⌘S и сохрани под именем, например: Вставить изображение из буфера.

## Добавление горячей клавиши:
Открой Системные настройки → Клавиатура → Сочетания клавиш → Службы (или "Services").
В списке найди свой пункт "Вставить изображение из буфера".
Добавь, например, сочетание Cmd + Shift + V.
