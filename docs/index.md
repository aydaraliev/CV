---
layout: default
title: Айдар Алиев – Data Engineer
---

<section id="role" class="section section--role">
  <h2>Инженер данных / Аналитик данных</h2>
  <p class="skills">
    <span>Python</span> | <span>SQL</span> | <span>Linux</span><br>
    Airflow | PostgreSQL | Pandas | PySpark | scikit-learn | Bash | R
  </p>
  <p><a href="https://github.com/aydaraliev/CV/raw/main/CV_Aliev_data_engineer.pdf" class="download-link">⬇ Скачать полное резюме</a></p>
</section>

<section id="summary" class="section section--summary">
  <h2>Абстракт</h2>
  <ul>
    <li>Более 14 лет опыта работы с данными</li>
    <li>Промышленный опыт построения ETL на Airflow + PostgreSQL для крупных проектов (ВТБ)</li>
    <li>Уверено владею Linux, SQL и Python, есть опыт CI/CD и контейнеризации</li>
    <li>Ищу развитие в <strong>Data Engineering</strong>, также открыт к <strong>ML Engineering</strong> и <strong>Data Analytics</strong></li>
  </ul>
</section>

<section id="projects" class="section section--projects">
  <h2>Проекты на GitHub</h2>
  <ul>
    <li><a href="https://github.com/aydaraliev/data_science_course_yandex">Jupyter ноутбуки с проектами по анализу данных, машинному и глубокому обучению</a></li>
    <li><a href="https://github.com/aydaraliev/SQL_for_development_course_yandex">Проекты на PostgreSQL (сложные запросы, пользовательские типы данных, PL/pgSQL, плагины, проектирование БД, триггеры, оптимизация)</a></li>
  </ul>
</section>

<section id="experience" class="section section--experience">
  <h2>Опыт работы</h2>

  <article class="job">
    <h3>Иннотех, Группа компаний</h3>
    <p class="meta"><em>Москва • Ноябрь 2022 — настоящее время</em><br><em>Ведущий российский интегратор IT-решений для корпоративного сектора</em></p>
    <p><strong>Разработчик ETL-процессов (Data Engineer)</strong></p>

    <h4>Зона ответственности:</h4>
    <ul>
      <li>Автоматизация ETL-процессов для проекта ВТБ на стеке Airflow + PostgreSQL.</li>
      <li>Рефакторинг, доработка и исправление ошибок внутренних фреймворков (Python, SQL).</li>
      <li>Обновление, создание новых и исправление ошибок в отчётах (Airflow, PostgreSQL, YAML, xml).</li>
      <li>Написание инструкций для разработчиков по алгоритмам работы с внутренними фреймворками (xml).</li>
      <li>Создание и регистрация .jar (Scala, Spark, Maven) модулей для загрузки больших (~100-150 Gb) таблиц в staging слой DWH команды.</li>
      <li>Поставка всех выполненных работ до production среды в рамках CI/CD процесса (git, sfera, Liquibase, YAML).</li>
    </ul>

    <h4>Ключевые достижения:</h4>
    <ul>
      <li>Автоматизировал обслуживание ODS слоя DWH (удаление устаревших данных), устранив необходимость в дополнительном железе (Airflow, PostgreSQL).</li>
      <li>Разработал DAG для ETL/ELT FDW таблиц объёмом до 700 млн строк (150 GB) в рамках DWH формирования регуляторной отчётности. Использовал PL/pgSQL процедуру, вызываемую из DAG'а Airflow.</li>
      <li>Внедрил новый этап логирования и модуль, повысив прозрачность и удобство поддержки процессов; спроектировал схему хранения логов, написал рутины на PL/pgSQL и триггеры, а также модуль Python.</li>
      <li>Создал модуль, используемый в 100+ DAG'ах Airflow команды; отрефакторил существующий код, применил подход DRY.</li>
      <li>Реализовал декоратор авторизации на Python с несколькими уровнями вложенности; используется ~в 90% DAG'ов команды.</li>
    </ul>

    <p class="stack"><strong>Стек:</strong> ETL/ELT, Python, SQL, Airflow, PostgreSQL, PL/pgSQL, Spark, git, Confluence, Maven</p>
  </article>

  <article class="job">
    <h3>Институт молекулярной генетики, НИЦ Курчатовский институт</h3>
    <p class="meta"><em>Москва • Сентябрь 2020 — настоящее время</em><br><em>Ведущий российский научный центр в области молекулярной генетики</em></p>
    <p><strong>Аналитик данных / Биоинформатик</strong></p>

    <h4>Зона ответственности:</h4>
    <ul>
      <li>Обработка больших массивов биомедицинских данных (50–60 млн строк) в Linux-среде (Pandas, multiprocessing, bash, CLI утилиты).</li>
      <li>Прунинг, импутация и анализ данных о мутациях с использованием Python и специализированных утилит.</li>
      <li>Интеграция C/C++ инструментов (tabix, vcftools, bcftools и др.) в пайплайны на Python и R.</li>
      <li>Автоматизация процессов, аналитические отчёты, контроль качества данных.</li>
    </ul>

    <h4>Ключевые достижения:</h4>
    <ul>
      <li>Спроектировал и оптимизировал пайплайн для анализа 50+ млн записей на Python и bash в Linux, реализовал многопоточность.</li>
      <li>Интегрировал C++ утилиты, ускорив расчёты с ~36 часов до ~5 часов при обработке VCF-файлов до 150 GB.</li>
      <li>Интегрировал расчёт статистик для анализа мутаций, связанных с ОНМК.</li>
      <li>Разработал систему автоматизированных отчётов (bash + R), снижающую ошибки первого рода.</li>
    </ul>

    <p class="stack"><strong>Стек:</strong> Python, R, bash, Linux, tabix, vcftools, bcftools, plink2, multiprocessing, FOSS</p>
  </article>

  <article class="job">
    <h3>Департамент здравоохранения города Москвы</h3>
    <p class="meta"><em>Москва • Август 2021 — Ноябрь 2022</em><br><em>Крупнейшая медицинская организация, управляющая цифровыми сервисами и данными здравоохранения Москвы</em></p>
    <p><strong>Аналитик данных</strong></p>

    <h4>Зона ответственности:</h4>
    <ul>
      <li>Автоматизация загрузки и обработки данных из ЕМИАС и S3 в DWH на ClickHouse SQL (Airflow).</li>
      <li>Разработка управленческих отчётов и дашбордов (Pandas, ClickHouse SQL, matplotlib, seaborn).</li>
      <li>Расчёт метрик эффективности для медицинских учреждений.</li>
      <li>Автоматизация обновления справочников и поддержка ad‑hoc аналитики.</li>
    </ul>

    <h4>Ключевые достижения:</h4>
    <ul>
      <li>Автоматизировал ETL плоских файлов до 20 Гб в ClickHouse, обеспечив стабильные обновления (Airflow).</li>
      <li>Автоматизировал ежедневные отчёты по KPI, освободив ~25 часов/неделю (Pandas, Airflow, openpyxl).</li>
      <li>Автоматизировал ведение справочников адресов, сэкономив ~5 часов/неделю.</li>
      <li>Создал пайплайн контроля качества витрин данных, сократив подготовку на ~7 часов.</li>
    </ul>

    <p class="stack"><strong>Стек:</strong> ETL/ELT, Python, SQL, ClickHouse, Airflow, pandas, openpyxl, requests, matplotlib, seaborn</p>
  </article>

  <article class="job">
    <h3>Работа в лабораториях, преподавание</h3>
    <p class="meta"><em>Москва / Новая Зеландия / Амстердам / Бишкек • Август 2011 — Сентябрь 2020</em></p>
    <p><strong>Биоинформатик (ETL/ELT‑пайплайны, анализ данных, моделирование, преподавание)</strong></p>

    <h4>Зона ответственности:</h4>
    <ul>
      <li>Моделирование и анализ биологических данных (Python, Java, R, Bash).</li>
      <li>Разработка и поддержка аналитических пайплайнов (Linux, Pandas, seaborn, scikit‑learn, multiprocessing).</li>
      <li>Преподавание Python и анализа данных студентам.</li>
      <li>Интеграция CLI‑утилит (C/C++/Fortran/R) в пайплайны.</li>
    </ul>

    <h4>Ключевые достижения:</h4>
    <ul>
      <li>Смоделировал изменения в человеческом геноме при расселении по Океании (Massey University).</li>
      <li>Обучил >60 студентов основам Python (АУЦА, Бишкек).</li>
      <li>Автоматизировал обработку сложных данных с помощью CLI утилит и скриптов.</li>
      <li>Создал модель биореактора для переработки дихлорметана (Институт системной биологии, Москва).</li>
      <li>Участвовал в международных коллаборациях с современными методами статистики и визуализации.</li>
    </ul>

    <p class="stack"><strong>Стек:</strong> Python, Bash, R, Java, Linux, C/C++ build tools, scikit‑learn, multiprocessing, FOSS</p>
  </article>
</section>

<section id="education" class="section section--education">
  <h2>Образование</h2>
  <table>
    <thead>
      <tr><th>Год</th><th>Учебное заведение</th><th>Специальность и квалификация</th></tr>
    </thead>
    <tbody>
      <tr><td>2014</td><td>Massey University, Новая Зеландия</td><td>Master in Computational Biology</td></tr>
      <tr><td>2011</td><td>МГУ им. М.В. Ломоносова (ФФМ)</td><td>Лечебное дело (врач)</td></tr>
      <tr><td>2011</td><td>МГУ им. М.В. Ломоносова (ВМиК)</td><td>Разработчик (доп. квалификация)</td></tr>
    </tbody>
  </table>
</section>

<section id="certificates" class="section section--certificates">
  <h2>Сертификаты</h2>
  <ul>
    <li><strong>2024</strong> — SQL для разработчиков (Яндекс Практикум)</li>
    <li><strong>2023</strong> — Специалист по Data Science (Яндекс Практикум)</li>
    <li><strong>2020</strong> — Python and Flask Bootcamp (Udemy)</li>
    <li><strong>2018</strong> — Data Science Math Skills, Statistics with R, OOP in Java, REST APIs, Linear Algebra, Calculus (Coursera/edX/Stanford)</li>
  </ul>
</section>

<section id="skills" class="section section--skills">
  <h2>Навыки и стек</h2>
  <ul>
    <li><strong>Языки:</strong> Python, SQL, R, Java</li>
    <li><strong>Модули Python:</strong> multiprocessing, os, requests, json</li>
    <li><strong>Базы данных и хранилища:</strong> PostgreSQL, ClickHouse, S3</li>
    <li><strong>ETL и Workflow:</strong> Airflow, Cron, Prefect 2, PySpark, Spark</li>
    <li><strong>Анализ данных:</strong> pandas, matplotlib, seaborn, scikit-learn, Jupyter, Excel</li>
    <li><strong>API и Web:</strong> REST, Flask, requests, json</li>
    <li><strong>DevOps:</strong> git, Docker, CI/CD</li>
    <li><strong>ОС:</strong> Linux (Ubuntu, Tuxedo OS), Windows, MacOS</li>
  </ul>
</section>

<section id="about" class="section section--about">
  <h2>О себе</h2>
  <ul>
    <li>Учился программировать на ВМиК МГУ параллельно с дипломом врача (ФФМ МГУ).</li>
    <li>После выпуска занимался сначала биоинформатикой, затем полностью перешёл в ETL и Data Engineering.</li>
    <li>Уверенно владею Python и SQL. Стремлюсь углубить свои знания при помощи онлайн обучения.</li>
    <li>Имею 3 года промышленного опыта разработки ETL процессов (Airflow, Pandas, PostgreSQL, ClickHouse).</li>
    <li>Сторонник непрерывного обучения. Сейчас прохожу курс по инженерии данных на Яндекс Практикум. Поступил в магистратуру ВШЭ по инженерии данных (обучение онлайн).</li>
    <li>Слежу за новостями в области Data Science через подписку на medium.</li>
    <li>Изучал основы теории игр и эволюционные вычисления в Universiteit van Amsterdam и Vrije Universiteit (Амстердам).</li>
    <li>Анализировал структурированные данные и моделировал биологические системы.</li>
    <li>Преподавал Python и основы анализа данных студентам.</li>
    <li>Уверенно работаю в командной строке Linux, пишу скрипты на bash.</li>
    <li>Открыт к предложениям Data Engineer, ML Engineer и Data Analyst.</li>
  </ul>
</section>

<section id="telegram" class="section section--telegram">
  <h2>Telegram</h2>
  <p><img src="{{ 'qr.png' | relative_url }}" alt="Telegram QR" width="220"></p>
  <p><a href="https://github.com/aydaraliev/CV/raw/main/CV_Aliev_data_engineer.pdf" class="download-link">⬇ Скачать полное резюме</a></p>
</section>
