### Requêtes simples en lecture

Listez :

- tous les students
SELECT * FROM `student`

- tous les projects
SELECT * FROM projects

- le student dont l'id est `2`'
SELECT * FROM `student` WHERE `id` = 2 

- les students dont l'id n'est pas `2`
SELECT * FROM `student` WHERE `id` != 2

- le project dont l'id est `3`'
SELECT * FROM project WHERE id = 3

- les projects dont l'id n'est pas `3`
SELECT * FROM project WHERE id != 3

- les students dont l'email contient la chaîne de caractères `.com`'
SELECT * FROM student WHERE email LIKE '%.com%'

- les students dont la date de création est antérieure au 10/01/2021 inclus
SELECT * FROM student WHERE created_at <= 2021/01/10


- les projets dont le nom du client ne contient pas la chaîne de caractères `Dolores`
SELECT * FROM project WHERE client_name NOT LIKE '%Dolores%'

- les projets dont la date de création est postérieure au 01/07/2021 inclus
SELECT * FROM project WHERE start_date >= 2021/07/01

- les students ayant un projet
SELECT * FROM student WHERE project_id

- les students n''ayant pas de projet
SELECT * FROM student WHERE project_id IS NULL

### Requêtes en écriture

Insérer :

- un tag
- un school year
- un projet
- un student
- une relation student tag

Mettez à jour :

- un tag
- une school year
- un projet
- un student
- une relation student tag

Supprimez :

- un tag
- une school year
- un projet
- une relation student tag
- un student

### Requêtes en lecture avec critères multiples

Listez :

- les students :
  - dont l'email contient la chaîne de caractères `.com`
  - OU dont la date de création est antérieure au 10/01/2021 inclus

- les students :
  - dont l'email contient la chaîne de caractères `.com`
  - ET dont la date de création est antérieure au 10/01/2021 inclus

- les students :
  - dont la date de création est postérieure au 01/01/2021 exclus
  - ET dont la date de création est antérieure au 10/01/2021 inclus

- les projets :
  - dont la description ne contient pas la chaîne de caractères `Dolores`
  - OU dont la date de début est postérieure au 01/07/2021 inclus

- les projets :
  - dont la description ne contient pas la chaîne de caractères `Dolores`
  - ET dont la date de début est postérieure au 01/07/2021 inclus

- les projets :
  - dont la date de création est postérieure au 01/01/2021 inclus
  - ET dont la date de début est antérieure au 01/07/2021 inclus

- les students :
  - dont l'email contient la chaîne de caractères `.com` ET la date de création est antérieure au 10/01/2021 inclus
  - OU ayant un projet

- les students :
  - dont l'email contient la chaîne de caractères `.com`ET la date de création est antérieure au 10/01/2021 inclus
  - ET n'ayant pas de projet

### Requêtes avec jointure « many to one »

Listez :

- tous les students avec leurs projets
- le student dont l'id est `2` avec son projet

### Requêtes avec jointure « one to many »

Listez :

- tous les projects avec leurs students
- le project dont l'id est `3` avec ses students

### Requêtes avec jointure « many to many »

Listez :

- tous les students avec leurs tags
- tous les tags avec leurs students
- le student dont l'id est `2` avec ses tags
- le tag dont l'id est `2` avec ses students

