#!/bin/bash

# Создаем корневую папку "Меню"
mkdir -p Меню

# Категории и их блюда
categories=("Завтраки" "Супы" "Основные блюда" "Гарниры" "Салаты" "Десерты" "Алкогольные коктейли" "Напитки")
dishes=(
    "Завтраки:Бутерброды_Горячая_классика Тосты_Идеальный_старт Протеиновый_пудинг_Фруктовый_заряд Яичница_Простая_радость Омлет_Воздушный_завтрак Овсянка_Полезное_утро"
    "Супы:Суп_Домашние_фрикадельки Луковый_суп_Французская_классика Рыбный_суп_Сливочная_нежность Гороховый_суп_Душевное_тепло Щи_Традиционные_русские Суп_Цветочная_легкость"
    "Основные блюда:Лазанья_Итальянская_классика Ризотто_Грибное_удовольствие Паста_Болоньезе Чили_Морской_пикант Рис_с_карри_Тропический_микс Бурритос_Техасский_гость Курица_по-французски_Сливочный_акцент Удон_Азиатский_привкус Фриттата_Итальянский_завтрак Куриные_котлеты_Паровое_наслаждение Котлеты_из_индейки_Легкость_вкуса"
    "Гарниры:Рис_Классический Каша_Рисовая_утешительница Гречка_С_грибным_акцентом Пюре_Мягкий_комфорт Запеканка_Картофельное_наслаждение Овощи_Запеченные_дары"
    "Салаты:Салат_Овощной_свежий Салат_Крабовое_наслаждение Салат_Оливье Салат_Цезарь Салат_Горчичный_штрих"
    "Десерты:Печенье_Домашний_уют Брауни_Шоколадный_соблазн Протеиновые_брауни_Здоровый_десерт Блинчики_Золотистая_радость Сырники_Творожное_счастье"
    "Алкогольные коктейли:Глинтвейн_Зимнее_тепло Лонг_Айленд_Вечеринка_в_бокале Мартини_Классическая_элегантность Апероль_Шприц_Итальянский_аперитив Мохито_Освежающая_мята Пина_Колада_Тропическая_мечта Маргарита_Соленый_акцент Космополитан_Стиль_большого_города"
    "Напитки:Чай_Традиционный Чай_Ягодный Кофе_Бодрящий Компот_Фруктовая_свежесть Шампанское_Праздничное Вино_Красное Вино_Белое"
)


# Создаем папки и файлы для каждой категории
for entry in "${dishes[@]}"; do
    category=$(echo "$entry" | cut -d':' -f1) # Получаем название категории
    items=$(echo "$entry" | cut -d':' -f2)   # Получаем список блюд
    
    mkdir -p "Меню/$category" # Создаем папку для категории
    
    # Создаем файлы для каждого блюда в категории
    for dish in $items; do
        touch "Меню/$category/$dish.md"
    done
done
