# Modelagem e banco de dados em MySQL

Projeto individual 4 do Programadores Cariocas cujo a proposta é desenvolver um banco de dados para uma escola(Resilia).

sobre o banco de dados:
- Existem outras entidades além dessas três (curso, turma, aluno)?               
  As entidades do modelo proposto são: 
  - alunos.resilia
  - curso.programadores
  - disciplina.programadores
  - turmas.programadores
  - instrutores.programadores
  
</br>

## Modelo Lógico

![imagem](https://github.com/bielkh/Modulo4-ProjetoIndividual/blob/main/modelo%20logico.png)

## Modelo Conceitual
</br>

![img](https://github.com/bielkh/Modulo4-ProjetoIndividual/blob/main/modelo%20conceitual.png)

- Como essas entidades estão relacionadas?        
  **alunos** tem **turma** e **curso**,              
  **curso** possui **turma** e **disciplina**,            
  **disciplina** possui *instrutor* que trabalha com a **turma**               
