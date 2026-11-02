# Projetos Fortran — acervo de aprendizagem e experimentação

> **Tipo:** coleção histórica de exercícios e códigos de Fortran; não representa um único programa pronto para produção. Curadoria iniciada em 2026-11-02.

## Conteúdo

- `fortran/Basic.Fortran.Course/` e `fortran/Basic.Fortran.Tutorial/`: séries de exemplos e exercícios.
- `fortran/Visual_Studio/`: projetos de IDE, configurações e código.
- `Console1/`, `Console2/`, `Console3/`, `Console4/`, `Console8/`: projetos de console.
- `Fortran_Lectures_Notes/`, `Lectures_Notes_1/` e `fortran_main.tex`: material didático em LaTeX.
- `temp_convertion.f08`, `test.f08` e outros `.f03`, `.f08`, `.f90`, `.f18`: fontes de estudo (a extensão não garante compatibilidade com todo compilador).
- `Configurations_Test/`, `MHS/`, `test/`, `test2/`: experimentos e configurações.

## Diagnóstico da árvore original

Foram encontrados **351 arquivos**; entre eles, **51 `.exe`**, **37 `.o`** e diversos arquivos `.pdb`, `.suo` e `.vsidx` produzidos em builds e IDEs. Aproximadamente 16,26 MiB correspondem a 134 caminhos identificados por critérios de extensão/padrão como builds ou temporários. **Isso não comprova que todos sejam descartáveis.**

## Política de preservação

**Manter:** fontes `.f03`, `.f08`, `.f90`, `.f95`, `.f18`, arquivos de solução `.sln` e `.vfproj` necessários, documentação, dados de exemplo, `.tex`, `.bib` e figuras-fonte.

**Candidatos à remoção futura após testes:** executáveis e objetos gerados, arquivos `.vs/`, `.pdb`, `.suo`, `.vsidx`, backups temporários e saídas auxiliares LaTeX. As regras `.gitignore` impedem novas adições acidentais, mas não eliminam os já versionados.

## Reprodução

Não há um comando único comprovado de compilação para todos os subprojetos. É necessário identificar o compilador, o sistema operacional e as opções de cada pasta antes de adotar scripts globais.

**Licenciamento:** nenhum arquivo de licença do projeto foi identificado na raiz; verificar autoria e direitos dos PDFs e dos exemplos antes de redistribuir ou publicar versões consolidadas.

Veja [CURADORIA-P2.md](CURADORIA-P2.md) para decisões e próximos passos. **Nenhuma exclusão foi executada nesta proposta.**
