---
layout: default
title: Айдар Алиев – Data Engineer
---

<section id="role" class="section section--role">
  <p class="skills">
    <span class="skill">Python</span>
    <span class="separator"> | </span>
    <span class="skill">SQL</span>
    <span class="separator"> | </span>
    <span class="skill">Linux</span><br>
    <span class="skill">Airflow</span>
    <span class="separator"> | </span>
    <span class="skill">PostgreSQL</span>
    <span class="separator"> | </span>
    <span class="skill">Pandas</span>
    <span class="separator"> | </span>
    <span class="skill">PySpark</span>
    <span class="separator"> | </span>
    <span class="skill">scikit-learn</span>
    <span class="separator"> | </span>
    <span class="skill">Bash</span>
    <span class="separator"> | </span>
    <span class="skill">R</span>
  </p>
</section>

<details id="summary" class="fold" open>
  <summary>Абстракт</summary>
  <ul>
    <li>Более 14 лет опыта работы с данными</li>
    <li>Промышленный опыт построения <span class="highlight">ETL</span> на <span class="highlight">Airflow</span> + <span class="highlight">PostgreSQL</span> для крупных проектов (ВТБ)</li>
    <li>Уверено владею <span class="highlight">Linux</span>, <span class="highlight">SQL</span> и <span class="highlight">Python</span>, есть опыт CI/CD и контейнеризации</li>
    <li>Ищу развитие в Data Engineering, также открыт к <strong>ML Engineering</strong> и <strong>Data Analytics</strong></li>
  </ul>
</details>

<details id="projects" class="fold" open>
  <summary>Проекты на GitHub</summary>
  <ul>
    <li><a class="proj-frag" href="https://github.com/aydaraliev/data_science_course_yandex">Jupyter ноутбуки</a> с проектами по анализу данных, машинному и глубокому обучению</li>
    <li><a class="proj-frag" href="https://github.com/aydaraliev/SQL_for_development_course_yandex">Проекты на PostgreSQL</a> (сложные запросы, пользовательские типы данных, PL/pgSQL, плагины, проектирование БД, триггеры, оптимизация)</li>
  </ul>
  <hr />
</details>

<details id="experience" class="fold" open>
  <summary>Опыт работы</summary>

  <article class="job">
    <h3>Иннотех, Группа компаний</h3>
    <p class="meta"><em>Москва • Ноябрь 2022 — настоящее время</em><br><em>Ведущий российский интегратор IT-решений для корпоративного сектора</em></p>
    <p class="job-title">Разработчик ETL-процессов (Data Engineer)</p>
    <p class="stack"><strong>Стек:</strong> <span class="highlight">ETL/ELT</span>, <span class="highlight">Python</span>, <span class="highlight">SQL</span>, <span class="highlight">Airflow</span>, <span class="highlight">PostgreSQL</span>, <span class="highlight">PL/pgSQL</span>, Spark, git, Confluence, Maven</p>

    <details class="collapsible-details">
      <summary>Зона ответственности и примеры решённых задач</summary>
      <h4>Зона ответственности:</h4>
      <ul>
        <li>Автоматизация <span class="highlight">ETL</span>-процессов для проекта ВТБ на стеке Airflow + PostgreSQL.</li>
        <li>Рефакторинг, доработка и исправление ошибок внутренних фреймворков (Python, SQL).</li>
        <li>Обновление, создание новых и исправление ошибок в отчётах (Airflow, PostgreSQL, YAML, xml).</li>
        <li>Написание инструкций для разработчиков по алгоритмам работы с внутренними фреймворками (xml).</li>
        <li>Создание и регистрация .jar (Scala, Spark, Maven) модулей для загрузки больших (~100-150 Gb) таблиц в staging слой DWH команды.</li>
        <li>Поставка всех выполненных работ до production среды в рамках CI/CD процесса (git, sfera, Liquibase, YAML).</li>
      </ul>

      <h4>Примеры решённых задач:</h4>
      <ul>
        <li>Автоматизировал обслуживание ODS слоя DWH (удаление устаревших данных), устранив необходимость в дополнительном железе (Airflow, PostgreSQL).</li>
        <li>Разработал DAG для ETL/ELT FDW таблиц объёмом до 700 млн строк (150 GB) в рамках DWH формирования регуляторной отчётности. Использовал PL/pgSQL процедуру, вызываемую из DAG'а Airflow.</li>
        <li>Внедрил новый этап логирования и модуль, повысив прозрачность и удобство поддержки процессов; спроектировал схему хранения логов, написал рутины на PL/pgSQL и триггеры, а также модуль Python.</li>
        <li>Создал модуль, используемый в 100+ DAG'ах Airflow команды; отрефакторил существующий код, применил подход DRY.</li>
        <li>Реализовал декоратор авторизации на Python с несколькими уровнями вложенности; используется ~в 90% DAG'ов команды.</li>
      </ul>
    </details>
  </article>

  <article class="job">
    <h3>Институт молекулярной генетики, НИЦ Курчатовский институт</h3>
    <p class="meta"><em>Москва • Сентябрь 2020 — настоящее время</em><br><em>Ведущий российский научный центр в области молекулярной генетики</em></p>
    <p class="job-title">Аналитик данных / Биоинформатик</p>
    <p class="stack"><strong>Стек:</strong> Python, R, bash, Linux, tabix, vcftools, bcftools, plink2, multiprocessing, FOSS</p>

    <details class="collapsible-details">
      <summary>Зона ответственности и примеры решённых задач</summary>
      <h4>Зона ответственности:</h4>
      <ul>
        <li>Обработка больших массивов биомедицинских данных (50–60 млн строк) в Linux-среде (Pandas, multiprocessing, bash, CLI утилиты).</li>
        <li>Прунинг, импутация и анализ данных о мутациях с использованием Python и специализированных утилит.</li>
        <li>Интеграция C/C++ инструментов (tabix, vcftools, bcftools и др.) в пайплайны на Python и R.</li>
        <li>Автоматизация процессов, аналитические отчёты, контроль качества данных.</li>
      </ul>

      <h4>Примеры решённых задач:</h4>
      <ul>
        <li>Спроектировал и оптимизировал пайплайн для анализа 50+ млн записей на Python и bash в Linux, реализовал многопоточность.</li>
        <li>Интегрировал C++ утилиты, ускорив расчёты с ~36 часов до ~5 часов при обработке VCF-файлов до 150 GB.</li>
        <li>Интегрировал расчёт статистик для анализа мутаций, связанных с ОНМК.</li>
        <li>Разработал систему автоматизированных отчётов (bash + R), снижающую ошибки первого рода.</li>
      </ul>
    </details>
  </article>

  <article class="job">
    <h3>Департамент здравоохранения города Москвы</h3>
    <p class="meta"><em>Москва • Август 2021 — Ноябрь 2022</em><br><em>Крупнейшая медицинская организация, управляющая цифровыми сервисами и данными здравоохранения Москвы</em></p>
    <p class="job-title">Аналитик данных</p>
    <p class="stack"><strong>Стек:</strong> ETL/ELT, <span class="highlight">Python</span>, <span class="highlight">SQL</span>, ClickHouse, <span class="highlight">Airflow</span>, <span class="highlight">pandas</span>, openpyxl, requests, matplotlib, seaborn</p>

    <details class="collapsible-details">
      <summary>Зона ответственности и примеры решённых задач</summary>
      <h4>Зона ответственности:</h4>
      <ul>
        <li>Автоматизация загрузки и обработки данных из ЕМИАС и S3 в DWH на ClickHouse SQL (<span class="highlight">Airflow</span>).</li>
        <li>Разработка управленческих отчётов и дашбордов (<span class="highlight">pandas</span>, ClickHouse SQL, matplotlib, seaborn).</li>
        <li>Расчёт метрик эффективности для медицинских учреждений.</li>
        <li>Автоматизация обновления справочников и поддержка ad‑hoc аналитики.</li>
      </ul>

      <h4>Примеры решённых задач:</h4>
      <ul>
        <li>Автоматизировал ETL плоских файлов до 20 Гб в ClickHouse, обеспечив стабильные обновления (<span class="highlight">Airflow</span>).</li>
        <li>Автоматизировал ежедневные отчёты по KPI, освободив ~25 часов/неделю (<span class="highlight">pandas</span>, <span class="highlight">Airflow</span>, openpyxl).</li>
        <li>Автоматизировал ведение справочников адресов, сэкономив ~5 часов/неделю.</li>
        <li>Создал пайплайн контроля качества витрин данных, сократив подготовку на ~7 часов.</li>
      </ul>
    </details>
  </article>

  <!-- Restored block: Работа в лабораториях, преподавание -->
  <article class="job">
    <h3>Работа в лабораториях, преподавание</h3>
    <p class="meta"><em>Москва / Новая Зеландия / Амстердам / Бишкек • Август 2011 — Сентябрь 2020</em><br><em>Исследовательская и образовательная деятельность в международных лабораториях и вузах</em></p>
    <p class="job-title">Биоинформатик (ETL/ELT‑пайплайны, анализ данных, моделирование, преподавание)</p>
    <p class="stack"><strong>Стек:</strong> <span class="highlight">Python</span>, Bash, R, Java, Linux, C/C++ build tools, scikit‑learn, multiprocessing, FOSS</p>

    <details class="collapsible-details">
      <summary>Зона ответственности и примеры решённых задач</summary>
      <h4>Зона ответственности:</h4>
      <ul>
        <li>Моделирование и анализ биологических данных с использованием <span class="highlight">Python</span>, Java, R и Bash.</li>
        <li>Разработка и поддержка аналитических пайплайнов (Linux, <span class="highlight">pandas</span>, seaborn, scikit‑learn, multiprocessing).</li>
        <li>Преподавание основ <span class="highlight">Python</span> и анализа данных студентам.</li>
        <li>Интеграция CLI‑утилит (C/C++/Fortran/R) в существующие пайплайны.</li>
      </ul>

      <h4>Примеры решённых задач:</h4>
      <ul>
        <li>Смоделировал изменения в человеческом геноме при расселении людей по Океании (Massey University, New Zealand).</li>
        <li>Обучил &gt;60 студентов основам <span class="highlight">Python</span> (АУЦА, Бишкек).</li>
        <li>Автоматизировал обработку сложных данных с помощью CLI‑утилит и скриптов.</li>
        <li>Создал модель биореактора для переработки дихлорметана.</li>
        <li>Участвовал в международных коллаборациях с современными методами статистики и визуализации.</li>
      </ul>
    </details>
  </article>
</details>

<details id="education" class="fold">
  <summary>Образование</summary>
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
</details>

<details id="certificates" class="fold">
  <summary>Сертификаты</summary>
  <ul>
    <li><strong>2024</strong> — SQL для разработчиков (Яндекс Практикум)</li>
    <li><strong>2023</strong> — Специалист по Data Science (Яндекс Практикум)</li>
    <li><strong>2020</strong> — Python and Flask Bootcamp (Udemy)</li>
    <li><strong>2018</strong> — Data Science Math Skills, Statistics with R, OOP in Java, REST APIs, Linear Algebra, Calculus (Coursera/edX/Stanford)</li>
  </ul>
</details>

<details id="skills" class="fold">
  <summary>Навыки и стек</summary>
  <ul>
    <li><strong>Языки:</strong> <span class="highlight">Python</span>, <span class="highlight">SQL</span>, R, Java</li>
    <li><strong>Модули Python:</strong> multiprocessing, os, requests, json</li>
    <li><strong>Базы данных и хранилища:</strong> <span class="highlight">PostgreSQL</span>, ClickHouse, S3</li>
    <li><strong>ETL и Workflow:</strong> <span class="highlight">Airflow</span>, Cron, Prefect 2, PySpark, Spark</li>
    <li><strong>Анализ данных:</strong> <span class="highlight">pandas</span>, matplotlib, seaborn, scikit-learn, <span class="highlight">Jupyter</span>, Excel</li>
    <li><strong>API и Web:</strong> REST, Flask, requests, json</li>
    <li><strong>DevOps:</strong> git, Docker, CI/CD</li>
    <li><strong>ОС:</strong> <span class="highlight">Linux</span> (Ubuntu, Tuxedo OS), Windows, MacOS</li>
  </ul>
</details>

<details id="about" class="fold">
  <summary>О себе</summary>
  <ul>
    <li>Учился программировать на ВМиК МГУ параллельно с дипломом врача (ФФМ МГУ).</li>
    <li>После выпуска занимался сначала биоинформатикой, затем полностью перешёл в ETL и <span class="highlight">Data Engineering</span>.</li>
    <li>Уверенно владею <span class="highlight">Python</span> и <span class="highlight">SQL</span>. Стремлюсь углубить свои знания при помощи онлайн обучения.</li>
    <li>Имею 3 года промышленного опыта разработки ETL процессов (<span class="highlight">Airflow</span>, <span class="highlight">pandas</span>, <span class="highlight">PostgreSQL</span>, ClickHouse).</li>
    <li>Сторонник непрерывного обучения. Сейчас прохожу курс по инженерии данных на Яндекс Практикум. Поступил в магистратуру ВШЭ по инженерии данных (обучение онлайн).</li>
    <li>Слежу за новостями в области Data Science через подписку на medium.</li>
    <li>Изучал основы теории игр и эволюционные вычисления в Universiteit van Amsterdam и Vrije Universiteit (Амстердам).</li>
    <li>Анализировал структурированные данные и моделировал биологические системы.</li>
    <li>Преподавал <span class="highlight">Python</span> и основы анализа данных студентам.</li>
    <li>Уверенно работаю в командной строке <span class="highlight">Linux</span>, пишу скрипты на bash.</li>
    <li>Открыт к предложениям <span class="highlight">Data Engineer</span>, ML Engineer и Data Analyst.</li>
  </ul>
</details>
